.class Lcom/airsaid/pickerviewlibrary/widget/b$b;
.super Ljava/lang/Object;
.source "WheelOptions.java"

# interfaces
.implements Lf/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airsaid/pickerviewlibrary/widget/b;->q(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/airsaid/pickerviewlibrary/widget/b;


# direct methods
.method constructor <init>(Lcom/airsaid/pickerviewlibrary/widget/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    invoke-static {v0}, Lcom/airsaid/pickerviewlibrary/widget/b;->c(Lcom/airsaid/pickerviewlibrary/widget/b;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    invoke-static {v0}, Lcom/airsaid/pickerviewlibrary/widget/b;->e(Lcom/airsaid/pickerviewlibrary/widget/b;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    invoke-static {v1}, Lcom/airsaid/pickerviewlibrary/widget/b;->c(Lcom/airsaid/pickerviewlibrary/widget/b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    invoke-static {v0}, Lcom/airsaid/pickerviewlibrary/widget/b;->c(Lcom/airsaid/pickerviewlibrary/widget/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    invoke-static {v1}, Lcom/airsaid/pickerviewlibrary/widget/b;->a(Lcom/airsaid/pickerviewlibrary/widget/b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_1

    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/b;->a(Lcom/airsaid/pickerviewlibrary/widget/b;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    invoke-static {v1}, Lcom/airsaid/pickerviewlibrary/widget/b;->f(Lcom/airsaid/pickerviewlibrary/widget/b;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    invoke-static {v2}, Lcom/airsaid/pickerviewlibrary/widget/b;->c(Lcom/airsaid/pickerviewlibrary/widget/b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    invoke-static {v1}, Lcom/airsaid/pickerviewlibrary/widget/b;->c(Lcom/airsaid/pickerviewlibrary/widget/b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    invoke-static {v0}, Lcom/airsaid/pickerviewlibrary/widget/b;->f(Lcom/airsaid/pickerviewlibrary/widget/b;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    move-result-object v0

    new-instance v2, Le/a;

    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    invoke-static {v3}, Lcom/airsaid/pickerviewlibrary/widget/b;->c(Lcom/airsaid/pickerviewlibrary/widget/b;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 8
    invoke-static {v4}, Lcom/airsaid/pickerviewlibrary/widget/b;->e(Lcom/airsaid/pickerviewlibrary/widget/b;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Le/a;-><init>(Ljava/util/ArrayList;)V

    .line 9
    invoke-virtual {v0, v2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Le/c;)V

    .line 10
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/b;->f(Lcom/airsaid/pickerviewlibrary/widget/b;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    :cond_3
    return-void
.end method
