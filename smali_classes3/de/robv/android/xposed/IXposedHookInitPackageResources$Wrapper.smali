.class public final Lde/robv/android/xposed/IXposedHookInitPackageResources$Wrapper;
.super Lde/robv/android/xposed/callbacks/XC_InitPackageResources;
.source "IXposedHookInitPackageResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/IXposedHookInitPackageResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Wrapper"
.end annotation


# instance fields
.field private final instance:Lde/robv/android/xposed/IXposedHookInitPackageResources;


# direct methods
.method public constructor <init>(Lde/robv/android/xposed/IXposedHookInitPackageResources;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lde/robv/android/xposed/callbacks/XC_InitPackageResources;-><init>()V

    .line 2
    iput-object p1, p0, Lde/robv/android/xposed/IXposedHookInitPackageResources$Wrapper;->instance:Lde/robv/android/xposed/IXposedHookInitPackageResources;

    return-void
.end method


# virtual methods
.method public handleInitPackageResources(Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;)V
    .locals 1
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

    .line 1
    iget-object v0, p0, Lde/robv/android/xposed/IXposedHookInitPackageResources$Wrapper;->instance:Lde/robv/android/xposed/IXposedHookInitPackageResources;

    invoke-interface {v0, p1}, Lde/robv/android/xposed/IXposedHookInitPackageResources;->handleInitPackageResources(Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;)V

    return-void
.end method
