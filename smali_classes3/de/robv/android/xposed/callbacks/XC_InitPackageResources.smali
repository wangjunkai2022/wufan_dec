.class public abstract Lde/robv/android/xposed/callbacks/XC_InitPackageResources;
.super Lde/robv/android/xposed/callbacks/XCallback;
.source "XC_InitPackageResources.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookInitPackageResources;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lde/robv/android/xposed/callbacks/XCallback;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "priority"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lde/robv/android/xposed/callbacks/XCallback;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected call(Lde/robv/android/xposed/callbacks/XCallback$Param;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;

    invoke-interface {p0, p1}, Lde/robv/android/xposed/IXposedHookInitPackageResources;->handleInitPackageResources(Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;)V

    :cond_0
    return-void
.end method
