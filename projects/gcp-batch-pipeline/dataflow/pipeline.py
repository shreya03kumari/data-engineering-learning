import apache_beam as beam
from apache_beam.options.pipeline_options import PipelineOptions


class TransformCustomerData(beam.DoFn):

    def process(self, element):
        fields = element.split(",")

        yield {
            "customer_id": int(fields[0]),
            "name": fields[1],
            "country": fields[2],
            "signup_date": fields[3],
            "total_spend": float(fields[4])
        }


def run():

    pipeline_options = PipelineOptions(
        runner="DirectRunner"
    )

    with beam.Pipeline(options=pipeline_options) as pipeline:

        (
            pipeline
            | "Read CSV File" >> beam.io.ReadFromText(
                "customers.csv",
                skip_header_lines=1
            )

            | "Transform Data" >> beam.ParDo(
                TransformCustomerData()
            )

            | "Print Output" >> beam.Map(
                print
            )
        )


if __name__ == "__main__":
    run()
