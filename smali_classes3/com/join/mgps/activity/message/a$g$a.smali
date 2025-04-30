.class Lcom/join/mgps/activity/message/a$g$a;
.super Ljava/lang/Object;
.source "CommunityFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/a$g;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/ForumProfileMessageBean;

.field final synthetic b:Lcom/join/mgps/activity/message/a$g;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/a$g;Lcom/join/mgps/dto/ForumProfileMessageBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/a$g$a;->b:Lcom/join/mgps/activity/message/a$g;

    iput-object p2, p0, Lcom/join/mgps/activity/message/a$g$a;->a:Lcom/join/mgps/dto/ForumProfileMessageBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/message/a$g$a;->b:Lcom/join/mgps/activity/message/a$g;

    iget-object p1, p1, Lcom/join/mgps/activity/message/a$g;->b:Lcom/join/mgps/activity/message/a;

    iget-object v0, p0, Lcom/join/mgps/activity/message/a$g$a;->a:Lcom/join/mgps/dto/ForumProfileMessageBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getComment_id()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/message/a$g$a;->a:Lcom/join/mgps/dto/ForumProfileMessageBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getRid()I

    move-result v1

    iget-object v2, p0, Lcom/join/mgps/activity/message/a$g$a;->a:Lcom/join/mgps/dto/ForumProfileMessageBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getFrom_nickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/join/mgps/activity/message/a;->Z(IILjava/lang/String;)V

    return-void
.end method
