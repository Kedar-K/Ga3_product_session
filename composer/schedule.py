# This file provides you an example of how to run sql file via airflow.
# for more info https://airflow.apache.org/docs/apache-airflow-providers-google/stable/operators/cloud/bigquery.html#execute-bigquery-jobs

CONNECTION_ID = 'project_name'

with DAG('dag', schedule_interval='0 9 * * *', template_searchpath=['/home/airflow/gcs/dags/'], max_active_runs=15, catchup=True, default_args=default_args) as dag:

    battery_data_quality = BigQueryOperator(
    task_id='task-id',
    sql='/SQL/Query_File.sql',
    destination_dataset_table='project-name.DataSetName.TableName${{ds_nodash}}',
    write_disposition='WRITE_TRUNCATE',
    bigquery_conn_id=CONNECTION_ID,
    use_legacy_sql=False,
    dag=dag
    )