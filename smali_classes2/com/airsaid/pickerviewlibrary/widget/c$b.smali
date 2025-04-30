.class Lcom/airsaid/pickerviewlibrary/widget/c$b;
.super Ljava/lang/Object;
.source "WheelTime.java"

# interfaces
.implements Lf/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airsaid/pickerviewlibrary/widget/c;->l(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/airsaid/pickerviewlibrary/widget/c;


# direct methods
.method constructor <init>(Lcom/airsaid/pickerviewlibrary/widget/c;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    iput-object p2, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 1
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x1c

    const/16 v3, 0x1d

    const/16 v4, 0x1e

    const/16 v5, 0x1f

    if-eqz v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->c(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    move-result-object p1

    new-instance v1, Le/b;

    invoke-direct {v1, v0, v5}, Le/b;-><init>(II)V

    invoke-virtual {p1, v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Le/c;)V

    const/16 v2, 0x1f

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->c(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    move-result-object p1

    new-instance v1, Le/b;

    invoke-direct {v1, v0, v4}, Le/b;-><init>(II)V

    invoke-virtual {p1, v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Le/c;)V

    const/16 v2, 0x1e

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->d(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    move-result p1

    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-static {v1}, Lcom/airsaid/pickerviewlibrary/widget/c;->a(Lcom/airsaid/pickerviewlibrary/widget/c;)I

    move-result v1

    add-int/2addr p1, v1

    rem-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->d(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    move-result p1

    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-static {v1}, Lcom/airsaid/pickerviewlibrary/widget/c;->a(Lcom/airsaid/pickerviewlibrary/widget/c;)I

    move-result v1

    add-int/2addr p1, v1

    rem-int/lit8 p1, p1, 0x64

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 7
    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->d(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    move-result p1

    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-static {v1}, Lcom/airsaid/pickerviewlibrary/widget/c;->a(Lcom/airsaid/pickerviewlibrary/widget/c;)I

    move-result v1

    add-int/2addr p1, v1

    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_4

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->c(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    move-result-object p1

    new-instance v1, Le/b;

    invoke-direct {v1, v0, v3}, Le/b;-><init>(II)V

    invoke-virtual {p1, v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Le/c;)V

    const/16 v2, 0x1d

    goto :goto_0

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->c(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    move-result-object p1

    new-instance v1, Le/b;

    invoke-direct {v1, v0, v2}, Le/b;-><init>(II)V

    invoke-virtual {p1, v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Le/c;)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->c(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    move-result p1

    sub-int/2addr v2, v0

    if-le p1, v2, :cond_5

    .line 11
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->c(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    :cond_5
    return-void
.end method
