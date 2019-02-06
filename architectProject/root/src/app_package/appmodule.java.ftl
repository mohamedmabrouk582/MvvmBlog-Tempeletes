package ${packageName}.di.modules;

import ${packageName}.app.MyApp;
import ${packageName}.base.RxBus;

import javax.inject.Singleton;

import dagger.Module;
import dagger.Provides;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;

@Module
public class AppModule {
    private MyApp myApp;

    public AppModule(MyApp myApp) {
        this.myApp = myApp;
    }
    @Singleton
    @Provides
    public MyApp getMyApp() {
        return myApp;
    }


    @Singleton
    @Provides
    public RxBus getRxBus(){
        return new RxBus();
    }


}
