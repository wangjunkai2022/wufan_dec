.class Lcom/join/mgps/activity/MGMainClassifyFragment$f;
.super Ljava/lang/Object;
.source "MGMainClassifyFragment.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainClassifyFragment;->j0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MGMainClassifyFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainClassifyFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->a:Lcom/join/mgps/activity/MGMainClassifyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->a:Lcom/join/mgps/activity/MGMainClassifyFragment;

    iget-object v0, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->x:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->a:Lcom/join/mgps/activity/MGMainClassifyFragment;

    iget-object v0, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->A:Landroid/widget/ToggleButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->a:Lcom/join/mgps/activity/MGMainClassifyFragment;

    iget-object v0, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->a:Lcom/join/mgps/activity/MGMainClassifyFragment;

    iget-object v0, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->w:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->a:Lcom/join/mgps/activity/MGMainClassifyFragment;

    iget-object v0, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->a:Lcom/join/mgps/activity/MGMainClassifyFragment;

    iget-object v0, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->D:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isReloadClassify()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->a:Lcom/join/mgps/activity/MGMainClassifyFragment;

    invoke-static {v0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->O(Lcom/join/mgps/activity/MGMainClassifyFragment;)Lcom/join/mgps/pref/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/join/mgps/pref/f;->callbackDownloadCenterVisible(Landroid/os/Bundle;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->a:Lcom/join/mgps/activity/MGMainClassifyFragment;

    iget-object v0, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->A:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->a:Lcom/join/mgps/activity/MGMainClassifyFragment;

    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->G:Ljava/lang/String;

    iget-object v0, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->p:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->a:Lcom/join/mgps/activity/MGMainClassifyFragment;

    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->p:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MGMainClassifyFragment;->c0(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->a:Lcom/join/mgps/activity/MGMainClassifyFragment;

    invoke-static {v0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->P(Lcom/join/mgps/activity/MGMainClassifyFragment;)Lcom/join/mgps/activity/d;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->a:Lcom/join/mgps/activity/MGMainClassifyFragment;

    iget-object v1, v1, Lcom/join/mgps/activity/MGMainClassifyFragment;->q:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/d;->m0(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->a:Lcom/join/mgps/activity/MGMainClassifyFragment;

    invoke-virtual {v0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->e0()V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->a:Lcom/join/mgps/activity/MGMainClassifyFragment;

    invoke-virtual {v0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->b0()V

    return-void
.end method
