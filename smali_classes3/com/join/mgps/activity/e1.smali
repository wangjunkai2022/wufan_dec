.class public final synthetic Lcom/join/mgps/activity/e1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/MGMainActivity;

.field public final synthetic b:Lcom/join/mgps/dto/FriendInviteBean;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/mgps/dto/FriendInviteBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/e1;->a:Lcom/join/mgps/activity/MGMainActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/e1;->b:Lcom/join/mgps/dto/FriendInviteBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/join/mgps/activity/e1;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/e1;->b:Lcom/join/mgps/dto/FriendInviteBean;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/activity/MGMainActivity;->M0(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/mgps/dto/FriendInviteBean;Landroid/view/View;)V

    return-void
.end method
