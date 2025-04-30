.class public final synthetic Lcom/join/mgps/adapter/k0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/join/mgps/adapter/k0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/join/mgps/adapter/k0;

    invoke-direct {v0}, Lcom/join/mgps/adapter/k0;-><init>()V

    sput-object v0, Lcom/join/mgps/adapter/k0;->a:Lcom/join/mgps/adapter/k0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/join/mgps/dto/FriendBean;

    check-cast p2, Lcom/join/mgps/dto/FriendBean;

    invoke-static {p1, p2}, Lcom/join/mgps/adapter/l0;->b(Lcom/join/mgps/dto/FriendBean;Lcom/join/mgps/dto/FriendBean;)I

    move-result p1

    return p1
.end method
