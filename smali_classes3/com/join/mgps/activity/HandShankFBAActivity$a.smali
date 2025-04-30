.class Lcom/join/mgps/activity/HandShankFBAActivity$a;
.super Ljava/lang/Object;
.source "HandShankFBAActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/HandShankFBAActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/activity/HandShankFBAActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/HandShankFBAActivity;I)V
    .locals 1

    .line 5
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankFBAActivity$a;->c:Lcom/join/mgps/activity/HandShankFBAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/join/mgps/activity/HandShankFBAActivity$a;->a:Ljava/lang/String;

    .line 7
    iget-object p1, p1, Lcom/join/mgps/activity/HandShankFBAActivity;->G:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/join/mgps/activity/HandShankFBAActivity$a;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/activity/HandShankFBAActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankFBAActivity$a;->c:Lcom/join/mgps/activity/HandShankFBAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/join/mgps/activity/HandShankFBAActivity$a;->a:Ljava/lang/String;

    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/HandShankFBAActivity;->G:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/join/mgps/activity/HandShankFBAActivity$a;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/activity/HandShankFBAActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankFBAActivity$a;->c:Lcom/join/mgps/activity/HandShankFBAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p2, p0, Lcom/join/mgps/activity/HandShankFBAActivity$a;->a:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/join/mgps/activity/HandShankFBAActivity$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFBAActivity$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFBAActivity$a;->c:Lcom/join/mgps/activity/HandShankFBAActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/HandShankFBAActivity;->G:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankFBAActivity$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankFBAActivity$a;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method
