.class public Lcom/netease/nis/quicklogin/view/a;
.super Ljava/lang/Object;
.source "DelegateOnClickImp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Landroid/view/View$OnClickListener;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/view/a;->b:Z

    .line 3
    iput-object p1, p0, Lcom/netease/nis/quicklogin/view/a;->a:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/nis/quicklogin/view/a;->b:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    cmp-long v2, v5, v3

    if-eqz v2, :cond_3

    sub-long v2, v0, v5

    const-wide/16 v4, 0x5dc

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/view/a;->b:Z

    if-eqz v0, :cond_2

    const-string p1, "\u672c\u6b21\u70b9\u51fb\u4e22\u5f03"

    .line 5
    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/a;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_2

    .line 7
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/netease/nis/quicklogin/view/a;->a:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_4

    invoke-interface {v2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 8
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method
