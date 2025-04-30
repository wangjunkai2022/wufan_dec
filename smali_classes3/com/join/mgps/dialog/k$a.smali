.class Lcom/join/mgps/dialog/k$a;
.super Ljava/lang/Object;
.source "ArenaGameListSortDialog.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/k;->b(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/k;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/k$a;->a:Lcom/join/mgps/dialog/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    const p1, 0x7f090cc3

    if-eq p2, p1, :cond_1

    const p1, 0x7f090cc8

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/k$a;->a:Lcom/join/mgps/dialog/k;

    const/4 p2, 0x1

    iput p2, p1, Lcom/join/mgps/dialog/k;->c:I

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/k$a;->a:Lcom/join/mgps/dialog/k;

    const/4 p2, 0x2

    iput p2, p1, Lcom/join/mgps/dialog/k;->c:I

    :goto_0
    return-void
.end method
