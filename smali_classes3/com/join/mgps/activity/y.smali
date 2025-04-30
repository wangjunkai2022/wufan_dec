.class public final synthetic Lcom/join/mgps/activity/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/FriendActivity$j;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/FriendActivity$j;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/y;->a:Lcom/join/mgps/activity/FriendActivity$j;

    iput p2, p0, Lcom/join/mgps/activity/y;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/join/mgps/activity/y;->a:Lcom/join/mgps/activity/FriendActivity$j;

    iget v1, p0, Lcom/join/mgps/activity/y;->b:I

    invoke-static {v0, v1, p1}, Lcom/join/mgps/activity/FriendActivity$j;->a(Lcom/join/mgps/activity/FriendActivity$j;ILandroid/view/View;)V

    return-void
.end method
