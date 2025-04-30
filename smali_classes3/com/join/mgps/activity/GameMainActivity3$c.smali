.class Lcom/join/mgps/activity/GameMainActivity3$c;
.super Ljava/lang/Object;
.source "GameMainActivity3.java"

# interfaces
.implements Lcom/join/mgps/dialog/x$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameMainActivity3;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameMainActivity3;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainActivity3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3$c;->a:Lcom/join/mgps/activity/GameMainActivity3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dialog/x;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$c;->a:Lcom/join/mgps/activity/GameMainActivity3;

    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity3;->V0:Lcom/github/snowdream/android/app/downloader/b;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/b;->i()V

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
