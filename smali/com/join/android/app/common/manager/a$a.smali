.class Lcom/join/android/app/common/manager/a$a;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/common/manager/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/common/manager/a;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/manager/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/manager/a$a;->a:Lcom/join/android/app/common/manager/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    const/4 p1, 0x0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/common/manager/a$a;->a:Lcom/join/android/app/common/manager/a;

    invoke-static {v0}, Lcom/join/android/app/common/manager/a;->b(Lcom/join/android/app/common/manager/a;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/join/android/app/common/manager/a$a;->a:Lcom/join/android/app/common/manager/a;

    invoke-static {v1}, Lcom/join/android/app/common/manager/a;->a(Lcom/join/android/app/common/manager/a;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090544

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, p1, p1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return p1
.end method
