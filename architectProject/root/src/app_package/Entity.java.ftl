package ${packageName}.data.models;

/*
 * Created By mabrouk on 26/12/18
 * TodoApp
 */

import android.arch.persistence.room.PrimaryKey;
import android.arch.persistence.room.Entity;
import android.databinding.BaseObservable;

@Entity
public class Test extends BaseObservable {
    @PrimaryKey
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
