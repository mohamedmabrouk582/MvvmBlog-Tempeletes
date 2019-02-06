package ${packageName}.di.modules;

/*
 * Created By mabrouk on 26/12/18
 * TodoApp
 */

import android.arch.persistence.room.Room;
import android.content.Context;

import ${packageName}.data.db.MyDbOperation;
import ${packageName}.data.db.MyAppDao;
import ${packageName}.data.db.MyAppDb;

import javax.inject.Singleton;

import dagger.Module;
import dagger.Provides;

@Module
public class RoomModule {
    private Context context;

    public RoomModule(Context context) {
        this.context = context;
    }

    @Singleton
    @Provides
    public Context getContext() {
        return context;
    }

    @Singleton
    @Provides
    public MyAppDb getMyAppDb(){
        return Room.databaseBuilder(context,MyAppDb.class,"myAppDb").build();
    }

    @Singleton
    @Provides
    public MyAppDao getMyAppDao(MyAppDb myAppDb){
        return myAppDb.getMyAppDao();
    }

    @Singleton
    @Provides
    public MyDbOperation getOperation(MyAppDao dao){
        return new MyDbOperation(dao);
    }
}
