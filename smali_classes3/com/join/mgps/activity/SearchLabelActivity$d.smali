.class Lcom/join/mgps/activity/SearchLabelActivity$d;
.super Ljava/lang/Object;
.source "SearchLabelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchLabelActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SearchLabelActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchLabelActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchLabelActivity$d;->a:Lcom/join/mgps/activity/SearchLabelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SearchLabelActivity$d;->a:Lcom/join/mgps/activity/SearchLabelActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/SearchLabelActivity;->d:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/SearchLabelActivity$d;->a:Lcom/join/mgps/activity/SearchLabelActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/SearchLabelActivity;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/SearchLabelActivity$d;->a:Lcom/join/mgps/activity/SearchLabelActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/SearchLabelActivity;->h:Lcom/join/mgps/activity/SearchLabelActivity$f;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
