package ${packageName}.di.modules;

import ${packageName}.data.api.${apiName};

import javax.inject.Singleton;

import dagger.Module;
import dagger.Provides;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;

@Module
public class ApiModule {
    private String baseUrl;

    public ApiModule(String baseUrl) {
        this.baseUrl = baseUrl;
    }

    @Singleton
    @Provides
    public ${apiName} get${apiName}(Retrofit retrofit){
        return retrofit.create(${apiName}.class);
    }

    @Singleton
    @Provides
    Retrofit getRetrofit(OkHttpClient client){
        return new Retrofit.Builder()
                .baseUrl(baseUrl)
                .client(client)
                .addConverterFactory(GsonConverterFactory.create())
                .addCallAdapterFactory(RxJava2CallAdapterFactory.create())
                .build();
    }

    @Singleton
    @Provides
    OkHttpClient getClient(HttpLoggingInterceptor interceptor){
        return new OkHttpClient.Builder().addInterceptor(interceptor).build();
    }
    @Singleton
    @Provides
    HttpLoggingInterceptor getInterceptor(){
        HttpLoggingInterceptor interceptor=new HttpLoggingInterceptor();
        return interceptor.setLevel(HttpLoggingInterceptor.Level.BODY);
    }
}
