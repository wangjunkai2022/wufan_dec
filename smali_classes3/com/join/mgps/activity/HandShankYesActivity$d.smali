.class Lcom/join/mgps/activity/HandShankYesActivity$d;
.super Landroid/widget/BaseAdapter;
.source "HandShankYesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/HandShankYesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/activity/HandShankYesActivity;


# direct methods
.method private constructor <init>(Lcom/join/mgps/activity/HandShankYesActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankYesActivity$d;->b:Lcom/join/mgps/activity/HandShankYesActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/HandShankYesActivity$d;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/activity/HandShankYesActivity;Lcom/join/mgps/activity/HandShankYesActivity$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HandShankYesActivity$d;-><init>(Lcom/join/mgps/activity/HandShankYesActivity;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[A-F0-9]{2}(:[A-F0-9]{2}){5}$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity$d;->b:Lcom/join/mgps/activity/HandShankYesActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/HandShankYesActivity;->V0(Lcom/join/mgps/activity/HandShankYesActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity$d;->b:Lcom/join/mgps/activity/HandShankYesActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/HandShankYesActivity;->V0(Lcom/join/mgps/activity/HandShankYesActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    .line 1
    :try_start_0
    iget-object p3, p0, Lcom/join/mgps/activity/HandShankYesActivity$d;->b:Lcom/join/mgps/activity/HandShankYesActivity;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c02ba

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    :cond_0
    iget-object p3, p0, Lcom/join/mgps/activity/HandShankYesActivity$d;->b:Lcom/join/mgps/activity/HandShankYesActivity;

    invoke-static {p3}, Lcom/join/mgps/activity/HandShankYesActivity;->V0(Lcom/join/mgps/activity/HandShankYesActivity;)Ljava/util/LinkedList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/HandShankTable;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/HandShankTable;->getIsConnect()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const v0, 0x7f090709

    const v1, 0x7f090636

    const v2, 0x7f0903e9

    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f08052f

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f080501

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity$d;->b:Lcom/join/mgps/activity/HandShankYesActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f060146

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const-string v0, "\u5df2\u8fde\u63a5"

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f08052e

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity$d;->b:Lcom/join/mgps/activity/HandShankYesActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f060149

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const-string v0, "\u672a\u8fde\u63a5"

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f0804fe

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const p3, 0x7f09063f

    .line 11
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity$d;->b:Lcom/join/mgps/activity/HandShankYesActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/HandShankYesActivity;->V0(Lcom/join/mgps/activity/HandShankYesActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/db/tables/HandShankTable;

    invoke-virtual {v0}, Lcom/join/mgps/db/tables/HandShankTable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p3, p0, Lcom/join/mgps/activity/HandShankYesActivity$d;->b:Lcom/join/mgps/activity/HandShankYesActivity;

    invoke-static {p3}, Lcom/join/mgps/activity/HandShankYesActivity;->V0(Lcom/join/mgps/activity/HandShankYesActivity;)Ljava/util/LinkedList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/db/tables/HandShankTable;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/HandShankTable;->getAddress()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/String;

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity$d;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, p3, v2

    const/4 v0, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v0

    invoke-static {p3}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HandShankYesActivity$d;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p2
.end method
