package ${packageName}.di.modules

import android.content.Context
import androidx.room.Room
import ${packageName}.app.MyApp
import ${packageName}.data.db.TestDao
import ${packageName}.data.db.TestDb
import dagger.Module
import dagger.Provides
import javax.inject.Singleton


/*
* Created By mabrouk on 19/03/19
* KotilnApp
*/

@Module
class RoomModule(val app:Context,val dbName:String){

    @Singleton
    @Provides
    fun getDao(db:TestDb):TestDao =db.getTestDao()

    @Singleton
    @Provides
    fun getDb():TestDb=Room.databaseBuilder(app,TestDb::class.java,dbName).fallbackToDestructiveMigration().build()

}
