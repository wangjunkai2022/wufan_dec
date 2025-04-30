.class Lcom/join/mgps/activity/PapaEverydayNewGameActivity$b;
.super Ljava/lang/Object;
.source "PapaEverydayNewGameActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->I0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/PapaEverydayNewGameActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PapaEverydayNewGameActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity$b;->a:Lcom/join/mgps/activity/PapaEverydayNewGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity$b;->a:Lcom/join/mgps/activity/PapaEverydayNewGameActivity;

    const/4 v1, 0x0

    iput v1, v0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->n:I

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->M0(I)V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity$b;->a:Lcom/join/mgps/activity/PapaEverydayNewGameActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity$b;->a()V

    :cond_0
    return-void
.end method
