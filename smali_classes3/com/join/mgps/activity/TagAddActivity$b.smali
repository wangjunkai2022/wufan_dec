.class Lcom/join/mgps/activity/TagAddActivity$b;
.super Lcom/papa91/arc/adapter/SimpleBaseAdapter;
.source "TagAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/TagAddActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/papa91/arc/adapter/SimpleBaseAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/TagAddActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/TagAddActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$b;->a:Lcom/join/mgps/activity/TagAddActivity;

    invoke-direct {p0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(ILandroid/view/View;Landroid/view/ViewGroup;Z)V
    .locals 0

    const p3, 0x7f09118d

    .line 1
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0357

    return v0
.end method
