with(particle)
{
    instance_destroy();
    part_type_destroy(spark);
    part_emitter_destroy(ps, spark_emitter);
    part_system_destroy(ps);
}

