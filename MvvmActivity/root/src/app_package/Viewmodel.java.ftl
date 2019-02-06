package ${packageName}.viewModels.${viewModelPackage};

import android.app.Application;
import android.arch.lifecycle.ViewModelProvider;
import android.support.annotation.NonNull;
import ${packageName}.views.${activityName}View;
import ${packageName}.data.api.${apiName};
import ${packageName}.viewModels.base.BaseViewModel;
<#if hasLoader>
import android.annotation.SuppressLint;
import android.databinding.BindingAdapter;
import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.support.v7.widget.RecyclerView;
<#if hasPaging>
import android.support.v7.widget.LinearLayoutManager;
import android.util.Log;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import io.reactivex.subjects.PublishSubject;

</#if> 
    import android.view.View;
    </#if>

public class ${activityName}ViewModel<v extends ${activityName}View> extends BaseViewModel<v> implements ${activityName}Vmodel<v> {
   <#if hasApi> private ${apiName} api; </#if>
    private Application application;
    <#if hasLoader>
    private ObservableBoolean loader=new ObservableBoolean();
    private ObservableField<String> error=new ObservableField<>();
    <#if hasPaging>
    private static final int VISIBLE_THRESHOLD = 1;
    private ObservableBoolean loadMore=new ObservableBoolean();
    private int lastVisibleItem, totalItemCount;
    public LinearLayoutManager layoutManager;
    private PublishSubject<Integer> loadMoreSubject=PublishSubject.create();
    private int pageNum=1;
    </#if> 
    </#if>
    
    public ${activityName}ViewModel(Application application <#if hasApi>,${apiName} api</#if>) {
        super(application);
       <#if hasApi> this.api=api;</#if>
        this.application=application;
        
       <#if hasPaging> loadMorePaging();</#if>
        
    }
    
     <#if hasLoader>
     public ObservableBoolean getLoader() {
        return loader;
    }

    public ObservableField<String> getError() {
        return error;
    }      
      <#if hasPaging>
     public ObservableBoolean getLoadMore() {
        return loadMore;
    } 
     
    @BindingAdapter("OnScrollListeners")
    public static void OnScrollListeners(RecyclerView recyclerView, RecyclerView.OnScrollListener listener){
        recyclerView.addOnScrollListener(listener);
    }

    public RecyclerView.OnScrollListener moreOnScrollListener=new RecyclerView.OnScrollListener() {
        @Override
        public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
            super.onScrolled(recyclerView, dx, dy);
            totalItemCount=layoutManager.getItemCount();
            lastVisibleItem=layoutManager.findLastVisibleItemPosition();
            Log.d("totalItemCount",totalItemCount+" : "+lastVisibleItem);
            if (totalItemCount <= (lastVisibleItem + VISIBLE_THRESHOLD)){
                loadMore.set(true);
                loadMoreSubject.onNext(++pageNum);
            }
        }
    };

     @SuppressLint("CheckResult")
    private void loadMorePaging(){
        loadMoreSubject
                .observeOn(AndroidSchedulers.mainThread())
                .subscribeOn(Schedulers.io())
                .subscribe(new Consumer<Integer>() {
                    @Override
                    public void accept(Integer integer) throws Exception {
                        // do someThing
                    }
                });
    }

   
    </#if>
      public void retry(View view){

    }
    </#if>
    
    public static class ${activityName}ViewModelFactory implements ViewModelProvider.Factory{
        private Application application;
       <#if hasApi> private ${apiName} mApi; </#if>

        public ${activityName}ViewModelFactory(Application application <#if hasApi>,${apiName} mApi </#if>) {
            this.application = application;
           <#if hasApi> this.mApi=mApi; </#if>

        }

        @NonNull
        @Override
        public ${activityName}ViewModel create(@NonNull Class modelClass) {
            return new ${activityName}ViewModel(application <#if hasApi>,mApi </#if>);
        }
    }
}
