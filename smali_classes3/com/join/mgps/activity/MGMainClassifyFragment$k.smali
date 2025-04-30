.class Lcom/join/mgps/activity/MGMainClassifyFragment$k;
.super Ljava/lang/Object;
.source "MGMainClassifyFragment.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/MGMainClassifyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k"
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field final synthetic b:Lcom/join/mgps/activity/MGMainClassifyFragment;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/MGMainClassifyFragment;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$k;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$k;->a:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$k;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$k;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    iget-object v0, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->w:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method
