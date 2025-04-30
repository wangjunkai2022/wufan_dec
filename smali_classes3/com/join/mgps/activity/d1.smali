.class public final synthetic Lcom/join/mgps/activity/d1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/MGMainActivity;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/MGMainActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/d1;->a:Lcom/join/mgps/activity/MGMainActivity;

    iput p2, p0, Lcom/join/mgps/activity/d1;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/join/mgps/activity/d1;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget v1, p0, Lcom/join/mgps/activity/d1;->b:I

    invoke-static {v0, v1, p1}, Lcom/join/mgps/activity/MGMainActivity;->F0(Lcom/join/mgps/activity/MGMainActivity;ILandroid/view/View;)V

    return-void
.end method
