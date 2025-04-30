.class Lcom/join/mgps/activity/CloudActivity$a;
.super Ljava/lang/Object;
.source "CloudActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CloudActivity;->G0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/join/mgps/activity/CloudActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CloudActivity;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CloudActivity$a;->b:Lcom/join/mgps/activity/CloudActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/CloudActivity$a;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$a;->b:Lcom/join/mgps/activity/CloudActivity;

    iget-boolean p1, p1, Lcom/join/mgps/activity/CloudActivity;->m:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$a;->a:Landroid/widget/ImageView;

    const v0, 0x7f0802e1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$a;->a:Landroid/widget/ImageView;

    const v0, 0x7f0802e2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$a;->b:Lcom/join/mgps/activity/CloudActivity;

    iget-boolean v0, p1, Lcom/join/mgps/activity/CloudActivity;->m:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/join/mgps/activity/CloudActivity;->m:Z

    return-void
.end method
