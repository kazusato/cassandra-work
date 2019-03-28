package kazusato.cassandra

import com.datastax.oss.driver.api.core.CqlSession
import com.datastax.oss.driver.api.querybuilder.QueryBuilder.*

fun main(args: Array<String>) {
    CqlSession.builder().withKeyspace("my_keyspace").build().use {
        val query = selectFrom("user").all()
        val statement = query.build()

        val resultSet = it.execute(statement)
        resultSet.onEach { row ->
            println("${row.getString("last_name")}/${row.getString("first_name")}")
        }
    }
}