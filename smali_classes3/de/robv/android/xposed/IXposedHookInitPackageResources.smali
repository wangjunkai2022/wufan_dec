.class public interface abstract Lde/robv/android/xposed/IXposedHookInitPackageResources;
.super Ljava/lang/Object;
.source "IXposedHookInitPackageResources.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedMod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/robv/android/xposed/IXposedHookInitPackageResources$Wrapper;
    }
.end annotation


# virtual methods
.method public abstract handleInitPackageResources(Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resparam"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
