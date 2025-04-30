.class Lcom/join/mgps/activity/MGMainClassifyFragment$d;
.super Ljava/lang/Object;
.source "MGMainClassifyFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainClassifyFragment;->j0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RadioButton;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/activity/MGMainClassifyFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainClassifyFragment;Landroid/widget/RadioButton;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$d;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    iput-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$d;->a:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$d;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    iget-object p1, p1, Lcom/join/mgps/activity/MGMainClassifyFragment;->p:[Ljava/lang/String;

    iget-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$d;->a:Landroid/widget/RadioButton;

    invoke-virtual {p2}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$d;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    iget-object p1, p1, Lcom/join/mgps/activity/MGMainClassifyFragment;->q:[Ljava/lang/String;

    iget-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$d;->b:Ljava/lang/String;

    aput-object p2, p1, v0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$d;->a:Landroid/widget/RadioButton;

    const p2, -0xb8b00

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$d;->a:Landroid/widget/RadioButton;

    const p2, -0xc3c3c4

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    :goto_0
    return-void
.end method
