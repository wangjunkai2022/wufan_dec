.class Lcom/xinzhu/overmind/client/e$h;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "Overlord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/e;->gameSpecificHooks(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/xinzhu/overmind/client/e$h;->a:Lcom/xinzhu/overmind/client/e;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 9
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

    const-string v0, "android_id"

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/MatrixCursor;

    .line 2
    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    check-cast v2, [Ljava/lang/String;

    .line 3
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4
    new-instance v3, Landroid/database/MatrixCursor;

    invoke-virtual {v1}, Landroid/database/MatrixCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 5
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_2

    .line 6
    aget-object v6, v2, v5

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/b;->a()Lcom/xinzhu/overmind/client/frameworks/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xinzhu/overmind/client/frameworks/b;->b()Lcom/xinzhu/overmind/server/os/MindDeviceInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v4

    .line 8
    iget-object v6, v6, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;->a:Ljava/lang/String;

    aput-object v6, v7, v8

    invoke-virtual {v3, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v1, v5}, Landroid/database/MatrixCursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_1

    new-array v6, v7, [Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v1, v8}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1, v3}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method
