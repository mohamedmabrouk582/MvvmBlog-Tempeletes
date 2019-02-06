apply plugin: 'com.android.application'

android {
  
    dataBinding {
        enabled = true
    }
    compileOptions {
        sourceCompatibility JavaVersion.VERSION_1_8
        targetCompatibility JavaVersion.VERSION_1_8
    }
}

dependencies {

    implementation 'com.google.dagger:dagger-android:2.17'
    implementation 'com.google.dagger:dagger-android-support:2.17'
    implementation 'com.google.code.gson:gson:2.8.2'
    implementation 'io.reactivex.rxjava2:rxandroid:2.0.2'
    implementation 'io.reactivex.rxjava2:rxjava:2.1.16'
    implementation 'com.squareup.retrofit2:converter-gson:2.3.0'
    implementation 'com.squareup.retrofit2:adapter-rxjava2:2.4.0'
    implementation 'com.squareup.okhttp3:logging-interceptor:3.10.0'
    implementation 'com.jakewharton.picasso:picasso2-okhttp3-downloader:1.1.0'
    implementation 'com.squareup.okhttp3:okhttp:3.10.0'
    implementation 'com.android.support:cardview-v7:27.1.1'
    implementation 'com.android.support:design:27.1.1'
    implementation 'com.android.support:palette-v7:27.1.1'
    implementation 'com.android.support:recyclerview-v7:27.1.1'
    implementation 'com.android.support:multidex:1.0.3'
    implementation 'com.intuit.sdp:sdp-android:1.0.5'
    implementation 'com.jpardogo.googleprogressbar:library:1.2.0'
    implementation 'com.github.bumptech.glide:glide:4.8.0'
    implementation 'com.aurelhubert:ahbottomnavigation:2.1.0'
    implementation 'com.flaviofaria:kenburnsview:1.0.7'
    implementation 'me.zhanghai.android.materialratingbar:library:1.3.1'
    annotationProcessor 'com.google.dagger:dagger-android-processor:2.15'
    annotationProcessor 'com.google.dagger:dagger-compiler:2.17'
    annotationProcessor 'com.github.bumptech.glide:compiler:4.8.0'
    implementation "android.arch.lifecycle:extensions:1.1.1"
    implementation "android.arch.lifecycle:runtime:1.1.1"
    annotationProcessor "android.arch.lifecycle:compiler:1.1.1"
    implementation "android.arch.lifecycle:common-java8:1.1.1"
    implementation "android.arch.lifecycle:reactivestreams:1.1.1"
    testImplementation "android.arch.core:core-testing:1.1.1"
    implementation "android.arch.persistence.room:runtime:1.1.1"
    annotationProcessor "android.arch.persistence.room:compiler:1.1.1"
    implementation "android.arch.persistence.room:rxjava2:1.1.1"
    testImplementation "android.arch.persistence.room:testing:1.1.1"
    implementation "android.arch.navigation:navigation-fragment:1.0.0-alpha07"
    implementation "android.arch.navigation:navigation-ui:1.0.0-alpha07"
    implementation 'de.hdodenhof:circleimageview:2.2.0'

}
