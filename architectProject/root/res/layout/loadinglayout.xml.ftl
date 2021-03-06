<?xml version="1.0" encoding="utf-8"?>
<FrameLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:id="@+id/rootLayout"
    android:background="@color/white"
    >
    <ViewStub
        android:id="@+id/layout_stub"
        android:inflatedId="@+id/message_layout"
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        />
    <include android:visibility="gone"
        android:layout_gravity="center"
        layout="@layout/error_layout" android:id="@+id/error_layout"
        android:layout_height="wrap_content"
        android:layout_width="wrap_content" />
    <com.jpardogo.android.googleprogressbar.library.GoogleProgressBar
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_gravity="center"
        android:visibility="gone"
        android:id="@+id/loader_progress"
        />

    <ProgressBar
        android:visibility="gone"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:id="@+id/normal_progress"
        android:layout_gravity="center"
        />
</FrameLayout>
