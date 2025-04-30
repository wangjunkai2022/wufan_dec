.class Lcom/join/mgps/activity/ShareWebActivity$a;
.super Ljava/lang/Object;
.source "ShareWebActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/input/InputNumView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity;->e2(Lcom/papa91/battle/protocol/GameRoom;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/input/a;

.field final synthetic b:Lcom/papa91/battle/protocol/GameRoom;

.field final synthetic c:Lcom/join/mgps/activity/ShareWebActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity;Lcom/join/mgps/customview/input/a;Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$a;->c:Lcom/join/mgps/activity/ShareWebActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity$a;->a:Lcom/join/mgps/customview/input/a;

    iput-object p3, p0, Lcom/join/mgps/activity/ShareWebActivity$a;->b:Lcom/papa91/battle/protocol/GameRoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$a;->a:Lcom/join/mgps/customview/input/a;

    invoke-virtual {v0}, Lcom/join/mgps/customview/input/a;->c()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$a;->a:Lcom/join/mgps/customview/input/a;

    invoke-virtual {v0}, Lcom/join/mgps/customview/input/a;->c()V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$a;->c:Lcom/join/mgps/activity/ShareWebActivity;

    const-string v1, "\u6b63\u5728\u83b7\u53d6\u623f\u95f4..."

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ShareWebActivity;->b1(Lcom/join/mgps/activity/ShareWebActivity;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$a;->c:Lcom/join/mgps/activity/ShareWebActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$a;->b:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/activity/ShareWebActivity;->y1(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V

    return-void
.end method
