.class public final enum Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;
.super Ljava/lang/Enum;
.source "HauntedScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/haunted/HauntedScanner$ClassDecl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeclKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

.field public static final enum DIRECT_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

.field public static final enum EGO_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

.field public static final enum STRING_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    const-string v1, "DIRECT_REFERENCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->DIRECT_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    .line 2
    new-instance v1, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    const-string v3, "STRING_REFERENCE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->STRING_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    .line 3
    new-instance v3, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    const-string v5, "EGO_REFERENCE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->EGO_REFERENCE:Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->$VALUES:[Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;
    .locals 1

    .line 1
    const-class v0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    return-object p0
.end method

.method public static values()[Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->$VALUES:[Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    invoke-virtual {v0}, [Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xinzhu/haunted/HauntedScanner$ClassDecl$DeclKind;

    return-object v0
.end method
