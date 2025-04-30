.class public Lcom/ss/android/download/api/model/a;
.super Ljava/lang/Object;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/download/api/model/a$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ss/android/download/api/model/a$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/download/api/model/a;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/model/a$a;->a(Lcom/ss/android/download/api/model/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/a;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/model/a$a;->b(Lcom/ss/android/download/api/model/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/a;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/model/a$a;->c(Lcom/ss/android/download/api/model/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/a;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/model/a$a;->d(Lcom/ss/android/download/api/model/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/a;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/model/a$a;->e(Lcom/ss/android/download/api/model/a$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/download/api/model/a;->e:Ljava/lang/String;

    return-void
.end method

.method public static a1655219899536dc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :pswitch_0
    const/16 v0, 0x4a

    const/16 v1, 0x37

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_1
    packed-switch v1, :pswitch_data_1

    :pswitch_2
    packed-switch v1, :pswitch_data_2

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-char v1, p0, v0

    xor-int/2addr v1, v0

    int-to-char v1, v1

    aput-char v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :goto_2
    :pswitch_4
    const/16 v0, 0x49

    const/16 v1, 0x60

    goto :goto_0

    :goto_3
    const/16 v0, 0x48

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x37
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
