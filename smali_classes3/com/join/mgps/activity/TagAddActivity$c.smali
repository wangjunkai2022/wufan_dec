.class Lcom/join/mgps/activity/TagAddActivity$c;
.super Ljava/lang/Object;
.source "TagAddActivity.java"

# interfaces
.implements Lcom/papa91/arc/interfaces/IOnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/TagAddActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/TagAddActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/TagAddActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$c;->a:Lcom/join/mgps/activity/TagAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity$c;->a:Lcom/join/mgps/activity/TagAddActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/TagAddActivity;->k:Landroid/widget/EditText;

    iget-object v0, v0, Lcom/join/mgps/activity/TagAddActivity;->v:Landroid/text/TextWatcher;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity$c;->a:Lcom/join/mgps/activity/TagAddActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/TagAddActivity;->q:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity$c;->a:Lcom/join/mgps/activity/TagAddActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/TagAddActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity$c;->a:Lcom/join/mgps/activity/TagAddActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/TagAddActivity;->k:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$c;->a:Lcom/join/mgps/activity/TagAddActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/TagAddActivity;->q:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    invoke-virtual {p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->clear()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$c;->a:Lcom/join/mgps/activity/TagAddActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/TagAddActivity;->k:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/join/mgps/activity/TagAddActivity;->v:Landroid/text/TextWatcher;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$c;->a:Lcom/join/mgps/activity/TagAddActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/TagAddActivity;->D0(Lcom/join/mgps/activity/TagAddActivity;)V

    return-void
.end method
