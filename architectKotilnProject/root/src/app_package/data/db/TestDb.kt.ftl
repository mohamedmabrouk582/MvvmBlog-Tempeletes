package ${packageName}.data.db

import androidx.room.Database
import androidx.room.RoomDatabase
import ${packageName}.data.models.Test


/*
* Created By mabrouk on 20/03/19
* KotilnApp
*/
@Database(entities = arrayOf(Test::class),version = 1,exportSchema = false)
abstract class TestDb : RoomDatabase(){
    public abstract fun getTestDao() :TestDao
}
