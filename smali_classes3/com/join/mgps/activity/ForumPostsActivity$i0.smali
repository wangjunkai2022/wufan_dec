.class Lcom/join/mgps/activity/ForumPostsActivity$i0;
.super Landroid/app/Dialog;
.source "ForumPostsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumPostsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i0"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumGagType;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/join/mgps/activity/ForumPostsActivity$k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/activity/ForumPostsActivity$k0<",
            "Lcom/join/mgps/dto/ForumBean$ForumGagType;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/widget/Spinner;

.field d:Landroid/widget/EditText;

.field private e:Ljava/lang/String;

.field f:I

.field final synthetic g:Lcom/join/mgps/activity/ForumPostsActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity;Landroid/content/Context;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->g:Lcom/join/mgps/activity/ForumPostsActivity;

    const v0, 0x7f1204ce

    .line 2
    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->f:I

    .line 4
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c042a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 5
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 8
    invoke-virtual {p2, v0, v0}, Landroid/view/View;->measure(II)V

    const v0, 0x7f090ea6

    .line 9
    invoke-static {p2, v0}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->c:Landroid/widget/Spinner;

    const v0, 0x7f0911ac

    .line 10
    invoke-static {p2, v0}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->d:Landroid/widget/EditText;

    const v0, 0x7f09036b

    .line 11
    invoke-static {p2, v0}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f090365

    .line 12
    invoke-static {p2, v1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->d:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->c:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMinHeight(I)V

    .line 14
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->c:Landroid/widget/Spinner;

    invoke-virtual {p2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 17
    new-instance p2, Lcom/join/mgps/activity/ForumPostsActivity$k0;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c042b

    invoke-direct {p2, p1, v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity$k0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->b:Lcom/join/mgps/activity/ForumPostsActivity$k0;

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->c:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->e:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumGagType;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->a:Ljava/util/List;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->b:Lcom/join/mgps/activity/ForumPostsActivity$k0;

    if-nez p1, :cond_1

    .line 5
    new-instance p1, Lcom/join/mgps/activity/ForumPostsActivity$k0;

    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->g:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c042b

    invoke-direct {p1, v0, v1, v2}, Lcom/join/mgps/activity/ForumPostsActivity$k0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->b:Lcom/join/mgps/activity/ForumPostsActivity$k0;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->c:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->b:Lcom/join/mgps/activity/ForumPostsActivity$k0;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 8
    new-instance p1, Lcom/join/mgps/dto/ForumBean$ForumGagType;

    invoke-direct {p1}, Lcom/join/mgps/dto/ForumBean$ForumGagType;-><init>()V

    const/4 v0, -0x1

    .line 9
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ForumBean$ForumGagType;->setType(I)V

    const-string v0, "\u8bbe\u7f6e\u7981\u8a00\u65f6\u95f4"

    .line 10
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ForumBean$ForumGagType;->setName(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->b:Lcom/join/mgps/activity/ForumPostsActivity$k0;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->b:Lcom/join/mgps/activity/ForumPostsActivity$k0;

    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->b:Lcom/join/mgps/activity/ForumPostsActivity$k0;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->f:I

    .line 2
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09036b

    if-ne p1, v0, :cond_4

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u8bf7\u586b\u5199\u7981\u8a00\u7406\u7531"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->c:Landroid/widget/Spinner;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->b:Lcom/join/mgps/activity/ForumPostsActivity$k0;

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->b:Lcom/join/mgps/activity/ForumPostsActivity$k0;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumBean$ForumGagType;

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumGagType;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumGagType;->getType()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->f:I

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u8bf7\u9009\u62e9\u7981\u8a00\u65f6\u95f4"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->g:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->e:Ljava/lang/String;

    iget v2, p0, Lcom/join/mgps/activity/ForumPostsActivity$i0;->f:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->q2(Ljava/lang/String;ILjava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity$i0;->dismiss()V

    goto :goto_1

    :cond_4
    const v0, 0x7f090365

    if-ne p1, v0, :cond_5

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity$i0;->dismiss()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
