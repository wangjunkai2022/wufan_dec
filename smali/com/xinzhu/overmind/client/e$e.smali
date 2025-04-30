.class Lcom/xinzhu/overmind/client/e$e;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "Overlord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/e;->uidHooks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xinzhu/overmind/client/e;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/e$e;->a:Lcom/xinzhu/overmind/client/e;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method public callAfterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2
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
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/a;->d()Lcom/xinzhu/overmind/client/frameworks/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/client/frameworks/a;->c(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4
    iget v0, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
