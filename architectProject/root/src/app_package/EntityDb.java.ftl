package ${packageName}.data.db;

import android.arch.persistence.room.Database;
import android.arch.persistence.room.RoomDatabase;

import ${packageName}.data.models.Test;

/*
 * Created By mabrouk on 26/12/18
 * TodoApp
 */
@Database(entities = {Test.class},exportSchema = false,version = 1)
public abstract class MyAppDb extends RoomDatabase {
    public abstract MyAppDao getMyAppDao();
}
