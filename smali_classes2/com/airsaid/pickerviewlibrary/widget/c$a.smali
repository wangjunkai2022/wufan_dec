.class Lcom/airsaid/pickerviewlibrary/widget/c$a;
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
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    iput-object p2, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-static {v0}, Lcom/airsaid/pickerviewlibrary/widget/c;->a(Lcom/airsaid/pickerviewlibrary/widget/c;)I

    move-result v0

    add-int/2addr p1, v0

    .line 2
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 3
    invoke-static {v1}, Lcom/airsaid/pickerviewlibrary/widget/c;->b(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x1c

    const/16 v3, 0x1d

    const/16 v4, 0x1e

    const/16 v5, 0x1f

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->c(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    move-result-object p1

    new-instance v0, Le/b;

    invoke-direct {v0, v2, v5}, Le/b;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Le/c;)V

    const/16 v1, 0x1f

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->b:Ljava/util/List;

    iget-object v5, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-static {v5}, Lcom/airsaid/pickerviewlibrary/widget/c;->b(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    move-result-object v5

    .line 6
    invoke-virtual {v5}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    move-result v5

    add-int/2addr v5, v2

    .line 7
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->c(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    move-result-object p1

    new-instance v0, Le/b;

    invoke-direct {v0, v2, v4}, Le/b;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Le/c;)V

    const/16 v1, 0x1e

    goto :goto_0

    .line 9
    :cond_1
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_2

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_3

    :cond_2
    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_4

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->c(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    move-result-object p1

    new-instance v0, Le/b;

    invoke-direct {v0, v2, v3}, Le/b;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Le/c;)V

    const/16 v1, 0x1d

    goto :goto_0

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->c(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    move-result-object p1

    new-instance v0, Le/b;

    invoke-direct {v0, v2, v1}, Le/b;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Le/c;)V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->c(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    move-result p1

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_5

    .line 13
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->c(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    :cond_5
    return-void
.end method
