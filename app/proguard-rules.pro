# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

-keep interface android.support.v7.** { *; }
-keep class android.support.v7.** { *; }

-dontwarn android.support.design.**
-keep class android.support.design.** { *; }
-keep interface android.support.design.** { *; }
-keep public class android.support.design.R$* { *; }

-keepclassmembers class * {
    public void *ButtonClicked(android.view.View);
}

-keepclasseswithmembernames class * {
    native <methods>;
}

-assumenosideeffects class android.util.Log {
    public static *** e(...);
    public static *** w(...);
    public static *** wtf(...);
    public static *** d(...);
    public static *** v(...);
}



-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application

-keep class androidx.appcompat.widget.** { *; }


#### -- Picasso --
 -dontwarn com.squareup.picasso.**

 #### -- OkHttp --
 -dontwarn com.squareup.okhttp.internal.**

 #### -- Apache Commons --
 -dontwarn org.apache.commons.logging.**

-keep class cz.msebera.android.httpclient.** { *; }
-keep class com.loopj.android.http.** { *; }
#startapp rule
### --Facebook
-dontwarn com.facebook.**


# Retrofit
-dontwarn retrofit2.**
-dontwarn org.codehaus.mojo.**
-keep class retrofit2.** { *; }
-keepattributes Signature
-keepattributes Exceptions
-keepattributes *Annotation*

-keepattributes RuntimeVisibleAnnotations
-keepattributes RuntimeInvisibleAnnotations
-keepattributes RuntimeVisibleParameterAnnotations
-keepattributes RuntimeInvisibleParameterAnnotations

-keepattributes EnclosingMethod

-keepclasseswithmembers class * {
    @retrofit2.* <methods>;
}

-keepclasseswithmembers interface * {
    @retrofit2.* <methods>;
}

-ignorewarnings