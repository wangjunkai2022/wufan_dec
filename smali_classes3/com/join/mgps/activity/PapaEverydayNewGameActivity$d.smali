.class Lcom/join/mgps/activity/PapaEverydayNewGameActivity$d;
.super Ljava/lang/Object;
.source "PapaEverydayNewGameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->W0()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity$d;->a:Lcom/join/mgps/activity/PapaEverydayNewGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity$d;->a:Lcom/join/mgps/activity/PapaEverydayNewGameActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->e:Lcom/join/mgps/customview/XListView4NewGame;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity$d;->a:Lcom/join/mgps/activity/PapaEverydayNewGameActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->e:Lcom/join/mgps/customview/XListView4NewGame;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity$d;->a:Lcom/join/mgps/activity/PapaEverydayNewGameActivity;

    iget v1, v0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->n:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->e:Lcom/join/mgps/customview/XListView4NewGame;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    :cond_0
    return-void
.end method
