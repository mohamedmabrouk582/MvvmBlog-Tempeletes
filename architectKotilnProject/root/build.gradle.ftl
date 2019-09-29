apply plugin: 'com.android.application'

apply plugin: 'kotlin-android'

apply plugin: 'kotlin-android-extensions'

apply plugin: 'kotlin-kapt'

android {

    dataBinding{
        enabled true
    }
    compileOptions {
        sourceCompatibility = '1.8'
        targetCompatibility = '1.8'
    }

    kapt {
        generateStubs = true
    }
}

dependencies {
    implementation fileTree(dir: 'libs', include: ['*.jar'])
    implementation "org.jetbrains.kotlin:kotlin-stdlib-jdk7:$kotlin_version"
    implementation 'androidx.appcompat:appcompat:1.0.2'
    implementation 'androidx.core:core-ktx:1.0.2'
    implementation 'androidx.constraintlayout:constraintlayout:1.1.3'
    implementation 'com.google.android.material:material:1.1.0-alpha09'
    implementation 'androidx.recyclerview:recyclerview:1.0.0'
    implementation 'androidx.cardview:cardview:1.0.0'
    implementation 'com.github.bumptech.glide:glide:4.9.0'
    implementation 'com.squareup.retrofit2:retrofit:2.5.0'
    implementation 'com.squareup.retrofit2:adapter-rxjava2:2.4.0'
    implementation 'com.squareup.retrofit2:converter-gson:2.5.0'
    implementation 'io.reactivex.rxjava2:rxandroid:2.0.2'
    implementation 'com.squareup.okhttp3:logging-interceptor:3.12.1'
    implementation 'com.jakewharton.picasso:picasso2-okhttp3-downloader:1.1.0'
    implementation 'com.squareup.okhttp3:okhttp:3.12.1'
    implementation 'javax.inject:javax.inject:1'
    implementation 'androidx.lifecycle:lifecycle-extensions:2.0.0'
    implementation 'androidx.lifecycle:lifecycle-runtime:2.0.0'
    implementation 'androidx.lifecycle:lifecycle-common-java8:2.0.0'
    implementation 'androidx.lifecycle:lifecycle-reactivestreams-ktx:2.0.0'
    implementation 'androidx.paging:paging-runtime-ktx:2.1.0'
    implementation 'androidx.paging:paging-rxjava2-ktx:2.1.0'
    implementation 'android.arch.persistence.room:runtime:1.1.1'
    implementation 'android.arch.work:work-runtime:1.0.1'
    implementation 'android.arch.work:work-runtime-ktx:1.0.1'
    implementation 'android.arch.work:work-rxjava2:1.0.1'
    implementation 'androidx.navigation:navigation-fragment-ktx:2.0.0'
    implementation 'androidx.navigation:navigation-ui-ktx:2.0.0'
    implementation 'com.github.mohamedmabrouk582:Loading:1.0.2'
    implementation "com.jakewharton.retrofit:retrofit2-kotlin-coroutines-adapter:0.9.2"
    implementation 'com.novoda:merlin:1.2.0'
    implementation "org.koin:koin-android:2.0.0"
    implementation "org.koin:koin-android-viewmodel:2.0.0"



    testImplementation 'junit:junit:4.12'
    testImplementation 'androidx.arch.core:core-testing:2.0.1'
    testImplementation 'androidx.paging:paging-common-ktx:2.1.0'
    androidTestImplementation 'androidx.test:runner:1.2.0'
    androidTestImplementation 'androidx.test.espresso:espresso-core:3.2.0'
    androidTestImplementation 'android.arch.work:work-testing:1.0.1'
    compileOnly 'javax.annotation:jsr250-api:1.0'
    kapt 'com.github.bumptech.glide:compiler:4.9.0'
    kapt 'com.android.databinding:compiler:3.1.4'
    kapt 'androidx.lifecycle:lifecycle-compiler:2.0.0'
    kapt 'android.arch.persistence.room:compiler:1.1.1'
