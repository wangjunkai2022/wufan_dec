.class Lcom/join/mgps/activity/PayStartActivity$c;
.super Ljava/lang/Object;
.source "PayStartActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PayStartActivity;->S0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/join/mgps/dto/PayActivityRebate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/PayStartActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PayStartActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PayStartActivity$c;->a:Lcom/join/mgps/activity/PayStartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dto/PayActivityRebate;Lcom/join/mgps/dto/PayActivityRebate;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayActivityRebate;->getMin_money()I

    move-result p1

    invoke-virtual {p2}, Lcom/join/mgps/dto/PayActivityRebate;->getMin_money()I

    move-result p2

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/dto/PayActivityRebate;

    check-cast p2, Lcom/join/mgps/dto/PayActivityRebate;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/PayStartActivity$c;->a(Lcom/join/mgps/dto/PayActivityRebate;Lcom/join/mgps/dto/PayActivityRebate;)I

    move-result p1

    return p1
.end method
