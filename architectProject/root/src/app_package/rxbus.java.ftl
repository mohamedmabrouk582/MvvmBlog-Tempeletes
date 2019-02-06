package ${packageName}.base;

import android.annotation.SuppressLint;
import android.util.Log;
import javax.inject.Singleton;
import javax.inject.Inject;

import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import io.reactivex.subjects.PublishSubject;
import io.reactivex.subjects.Subject;

@Singleton
public class RxBus {
    private CompositeDisposable compositeDisposable=new CompositeDisposable();
    @Inject
   public RxBus(){
      }


    public void unSubscribe(Disposable disposable){
        compositeDisposable.remove(disposable);
    }
}
