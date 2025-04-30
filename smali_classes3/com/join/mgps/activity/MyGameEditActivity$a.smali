.class Lcom/join/mgps/activity/MyGameEditActivity$a;
.super Ljava/lang/Object;
.source "MyGameEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyGameEditActivity;->U0(Landroid/view/View;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/join/mgps/activity/MyGameEditActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyGameEditActivity;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity$a;->b:Lcom/join/mgps/activity/MyGameEditActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/MyGameEditActivity$a;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity$a;->b:Lcom/join/mgps/activity/MyGameEditActivity;

    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    iput-boolean v0, p1, Lcom/join/mgps/activity/MyGameEditActivity;->q:Z

    return-void
.end method
