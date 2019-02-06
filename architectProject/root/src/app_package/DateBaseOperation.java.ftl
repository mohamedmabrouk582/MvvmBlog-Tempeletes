package ${packageName}.data.db;

/*
 * Created By mabrouk on 26/12/18
 * TodoApp
 */

import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class MyDbOperation {
    private MyAppDao myAppDao;

    @Inject
    public MyDbOperation(MyAppDao myAppDao) {
        this.myAppDao = myAppDao;
    }
}
