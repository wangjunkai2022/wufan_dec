.class Lcom/join/mgps/dialog/k$b;
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
    iput-object p1, p0, Lcom/join/mgps/dialog/k$b;->a:Lcom/join/mgps/dialog/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    const/4 p1, 0x3

    packed-switch p2, :pswitch_data_0

    .line 1
    :pswitch_0
    iget-object p2, p0, Lcom/join/mgps/dialog/k$b;->a:Lcom/join/mgps/dialog/k;

    iput p1, p2, Lcom/join/mgps/dialog/k;->d:I

    goto :goto_0

    .line 2
    :pswitch_1
    iget-object p1, p0, Lcom/join/mgps/dialog/k$b;->a:Lcom/join/mgps/dialog/k;

    const/4 p2, 0x5

    iput p2, p1, Lcom/join/mgps/dialog/k;->d:I

    goto :goto_0

    .line 3
    :pswitch_2
    iget-object p1, p0, Lcom/join/mgps/dialog/k$b;->a:Lcom/join/mgps/dialog/k;

    const/4 p2, 0x6

    iput p2, p1, Lcom/join/mgps/dialog/k;->d:I

    goto :goto_0

    .line 4
    :pswitch_3
    iget-object p2, p0, Lcom/join/mgps/dialog/k$b;->a:Lcom/join/mgps/dialog/k;

    iput p1, p2, Lcom/join/mgps/dialog/k;->d:I

    goto :goto_0

    .line 5
    :pswitch_4
    iget-object p1, p0, Lcom/join/mgps/dialog/k$b;->a:Lcom/join/mgps/dialog/k;

    const/4 p2, 0x4

    iput p2, p1, Lcom/join/mgps/dialog/k;->d:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090cc4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
