import apache_beam as beam

from apache_beam.options.pipeline_options import (
    PipelineOptions,
    StandardOptions
)

import json


class ParseEvent(beam.DoFn):

    def process(self, message):

        event = json.loads(message)

        yield {
            "event_id": event["event_id"],
            "user_id": event["user_id"],
            "event_type": event["event_type"],
            "product": event["product"],
            "amount": event["amount"],
            "timestamp": event["timestamp"]
        }


def run():

    options = PipelineOptions()

    options.view_as(
        StandardOptions
    ).streaming = True


    with beam.Pipeline(
        options=options
    ) as pipeline:


        events = (
            pipeline

            | "Read from PubSub"
            >> beam.io.ReadFromPubSub(
                topic="projects/PROJECT_ID/topics/events"
            )

            | "Decode Message"
            >> beam.Map(
                lambda x: x.decode("utf-8")
            )

            | "Parse JSON Event"
            >> beam.ParDo(
                ParseEvent()
            )
        )


        (
            events

            | "Write to BigQuery"
            >> beam.io.WriteToBigQuery(
                table="PROJECT_ID.dataset.events",
                write_disposition=beam.io.BigQueryDisposition.WRITE_APPEND
            )
        )


if __name__ == "__main__":
    run()
