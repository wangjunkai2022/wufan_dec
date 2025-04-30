.class Lcom/join/mgps/activity/GameDetailActivity$f;
.super Ljava/lang/Object;
.source "GameDetailActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetailActivity;->f1(Lcom/join/mgps/activity/GameDetailActivity$l;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/GameListItemBean;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$f;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$f;->a:Lcom/join/mgps/activity/GameDetailActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/join/mgps/activity/GameDetailActivity;->Q0:Z

    return-void
.end method
