.class public abstract Lcom/xinzhu/overmind/server/accounts/e$b;
.super Landroid/os/Binder;
.source "IMindAccountManager.java"

# interfaces
.implements Lcom/xinzhu/overmind/server/accounts/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/accounts/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/accounts/e$b$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xinzhu.overmind.server.accounts.IMindAccountManager"

.field static final TRANSACTION_accountAuthenticated:I = 0x1b

.field static final TRANSACTION_addAccount:I = 0x16

.field static final TRANSACTION_addAccountAsUser:I = 0x17

.field static final TRANSACTION_addAccountExplicitly:I = 0xa

.field static final TRANSACTION_addAccountExplicitlyWithVisibility:I = 0x2a

.field static final TRANSACTION_addSharedAccountAsUser:I = 0x1e

.field static final TRANSACTION_addSharedAccountsFromParentUser:I = 0x1d

.field static final TRANSACTION_clearPassword:I = 0x12

.field static final TRANSACTION_confirmCredentialsAsUser:I = 0x1a

.field static final TRANSACTION_copyAccountToUser:I = 0xd

.field static final TRANSACTION_createRequestAccountAccessIntentSenderAsUser:I = 0x31

.field static final TRANSACTION_editProperties:I = 0x19

.field static final TRANSACTION_finishSessionAsUser:I = 0x26

.field static final TRANSACTION_getAccountByTypeAndFeatures:I = 0x8

.field static final TRANSACTION_getAccountVisibility:I = 0x2c

.field static final TRANSACTION_getAccountsAndVisibilityForPackage:I = 0x2d

.field static final TRANSACTION_getAccountsAsUser:I = 0x6

.field static final TRANSACTION_getAccountsByFeatures:I = 0x9

.field static final TRANSACTION_getAccountsByTypeForPackage:I = 0x5

.field static final TRANSACTION_getAccountsForPackage:I = 0x4

.field static final TRANSACTION_getAuthToken:I = 0x15

.field static final TRANSACTION_getAuthTokenLabel:I = 0x1c

.field static final TRANSACTION_getAuthenticatorTypes:I = 0x3

.field static final TRANSACTION_getPackagesAndVisibilityForAccount:I = 0x29

.field static final TRANSACTION_getPassword:I = 0x1

.field static final TRANSACTION_getPreviousName:I = 0x23

.field static final TRANSACTION_getSharedAccountsAsUser:I = 0x1f

.field static final TRANSACTION_getUserData:I = 0x2

.field static final TRANSACTION_hasAccountAccess:I = 0x30

.field static final TRANSACTION_hasFeatures:I = 0x7

.field static final TRANSACTION_invalidateAuthToken:I = 0xe

.field static final TRANSACTION_isCredentialsUpdateSuggested:I = 0x28

.field static final TRANSACTION_onAccountAccessed:I = 0x32

.field static final TRANSACTION_peekAuthToken:I = 0xf

.field static final TRANSACTION_registerAccountListener:I = 0x2e

.field static final TRANSACTION_removeAccountAsUser:I = 0xb

.field static final TRANSACTION_removeAccountExplicitly:I = 0xc

.field static final TRANSACTION_removeSharedAccountAsUser:I = 0x20

.field static final TRANSACTION_renameAccount:I = 0x22

.field static final TRANSACTION_renameSharedAccountAsUser:I = 0x21

.field static final TRANSACTION_setAccountVisibility:I = 0x2b

.field static final TRANSACTION_setAuthToken:I = 0x10

.field static final TRANSACTION_setPassword:I = 0x11

.field static final TRANSACTION_setUserData:I = 0x13

.field static final TRANSACTION_someUserHasAccount:I = 0x27

.field static final TRANSACTION_startAddAccountSession:I = 0x24

.field static final TRANSACTION_startUpdateCredentialsSession:I = 0x25

.field static final TRANSACTION_unregisterAccountListener:I = 0x2f

.field static final TRANSACTION_updateAppPermission:I = 0x14

.field static final TRANSACTION_updateCredentials:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xinzhu.overmind.server.accounts.IMindAccountManager"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xinzhu/overmind/server/accounts/e;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xinzhu.overmind.server.accounts.IMindAccountManager"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/xinzhu/overmind/server/accounts/e;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/xinzhu/overmind/server/accounts/e;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/xinzhu/overmind/server/accounts/e$b$a;

    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/server/accounts/e$b$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xinzhu/overmind/server/accounts/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/accounts/e$b$a;->b:Lcom/xinzhu/overmind/server/accounts/e;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xinzhu/overmind/server/accounts/e;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/accounts/e$b$a;->b:Lcom/xinzhu/overmind/server/accounts/e;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, Lcom/xinzhu/overmind/server/accounts/e$b$a;->b:Lcom/xinzhu/overmind/server/accounts/e;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v8, p0

    move v0, p1

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    const v2, 0x5f4e5446

    const/4 v10, 0x1

    const-string v3, "com.xinzhu.overmind.server.accounts.IMindAccountManager"

    if-eq v0, v2, :cond_39

    const/4 v2, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 2
    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-interface {p0, v0}, Lcom/xinzhu/overmind/server/accounts/e;->onAccountAccessed(Ljava/lang/String;)V

    .line 5
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 6
    :pswitch_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    goto :goto_0

    :cond_0
    move-object v0, v4

    .line 9
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 11
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/UserHandle;

    .line 12
    :cond_1
    invoke-interface {p0, v0, v3, v4}, Lcom/xinzhu/overmind/server/accounts/e;->createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;

    move-result-object v0

    .line 13
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    invoke-virtual {v0, v9, v10}, Landroid/content/IntentSender;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v10

    .line 17
    :pswitch_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    goto :goto_2

    :cond_3
    move-object v0, v4

    .line 20
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 22
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/UserHandle;

    .line 23
    :cond_4
    invoke-interface {p0, v0, v2, v4}, Lcom/xinzhu/overmind/server/accounts/e;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    .line 24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 25
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    .line 26
    :pswitch_3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-interface {p0, v0, v1}, Lcom/xinzhu/overmind/server/accounts/e;->unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 31
    :pswitch_4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-interface {p0, v0, v1}, Lcom/xinzhu/overmind/server/accounts/e;->registerAccountListener([Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 36
    :pswitch_5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-interface {p0, v0, v1}, Lcom/xinzhu/overmind/server/accounts/e;->getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 40
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 41
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return v10

    .line 42
    :pswitch_6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 44
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/accounts/Account;

    .line 45
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-interface {p0, v4, v0}, Lcom/xinzhu/overmind/server/accounts/e;->getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    .line 47
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 48
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    .line 49
    :pswitch_7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 51
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/accounts/Account;

    .line 52
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    invoke-interface {p0, v4, v0, v1}, Lcom/xinzhu/overmind/server/accounts/e;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    .line 55
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    .line 57
    :pswitch_8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 59
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    goto :goto_3

    :cond_7
    move-object v0, v4

    .line 60
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 62
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    .line 63
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 64
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 65
    invoke-interface {p0, v0, v2, v4, v1}, Lcom/xinzhu/overmind/server/accounts/e;->addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Z

    move-result v0

    .line 66
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    .line 68
    :pswitch_9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 70
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/accounts/Account;

    .line 71
    :cond_9
    invoke-interface {p0, v4}, Lcom/xinzhu/overmind/server/accounts/e;->getPackagesAndVisibilityForAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object v0

    .line 72
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return v10

    .line 74
    :pswitch_a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    .line 77
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/accounts/Account;

    .line 78
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-interface {p0, v0, v4, v1}, Lcom/xinzhu/overmind/server/accounts/e;->isCredentialsUpdateSuggested(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 81
    :pswitch_b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 83
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/accounts/Account;

    .line 84
    :cond_b
    invoke-interface {p0, v4}, Lcom/xinzhu/overmind/server/accounts/e;->someUserHasAccount(Landroid/accounts/Account;)Z

    move-result v0

    .line 85
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    .line 87
    :pswitch_c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v3

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 90
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v5, v0

    goto :goto_4

    :cond_c
    move-object v5, v4

    .line 91
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v6, 0x1

    goto :goto_5

    :cond_d
    const/4 v6, 0x0

    .line 92
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 93
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v4, v0

    .line 94
    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v0, p0

    move-object v1, v3

    move-object v2, v5

    move v3, v6

    move v5, v7

    .line 95
    invoke-interface/range {v0 .. v5}, Lcom/xinzhu/overmind/server/accounts/e;->finishSessionAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;ZLandroid/os/Bundle;I)V

    .line 96
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 97
    :pswitch_d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v3

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 100
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    move-object v5, v0

    goto :goto_6

    :cond_f
    move-object v5, v4

    .line 101
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v7, 0x1

    goto :goto_7

    :cond_10
    const/4 v7, 0x0

    .line 103
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    .line 104
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v11, v0

    goto :goto_8

    :cond_11
    move-object v11, v4

    :goto_8
    move-object v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v6

    move v4, v7

    move-object v5, v11

    .line 105
    invoke-interface/range {v0 .. v5}, Lcom/xinzhu/overmind/server/accounts/e;->startUpdateCredentialsSession(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 107
    :pswitch_e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v3

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v11, 0x1

    goto :goto_9

    :cond_12
    const/4 v11, 0x0

    .line 113
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 114
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v12, v0

    goto :goto_a

    :cond_13
    move-object v12, v4

    :goto_a
    move-object v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    move v5, v11

    move-object v6, v12

    .line 115
    invoke-interface/range {v0 .. v6}, Lcom/xinzhu/overmind/server/accounts/e;->startAddAccountSession(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 117
    :pswitch_f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 119
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/accounts/Account;

    .line 120
    :cond_14
    invoke-interface {p0, v4}, Lcom/xinzhu/overmind/server/accounts/e;->getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    .line 123
    :pswitch_10
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_15

    .line 126
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/accounts/Account;

    .line 127
    :cond_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-interface {p0, v0, v4, v1}, Lcom/xinzhu/overmind/server/accounts/e;->renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 130
    :pswitch_11
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    .line 132
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/accounts/Account;

    .line 133
    :cond_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 135
    invoke-interface {p0, v4, v0, v1}, Lcom/xinzhu/overmind/server/accounts/e;->renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    .line 136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    .line 138
    :pswitch_12
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    .line 140
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/accounts/Account;

    .line 141
    :cond_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    invoke-interface {p0, v4, v0}, Lcom/xinzhu/overmind/server/accounts/e;->removeSharedAccountAsUser(Landroid/accounts/Account;I)Z

    move-result v0

    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    .line 145
    :pswitch_13
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 147
    invoke-interface {p0, v0}, Lcom/xinzhu/overmind/server/accounts/e;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v0

    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {v9, v0, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v10

    .line 150
    :pswitch_14
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 152
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/accounts/Account;

    .line 153
    :cond_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 154
    invoke-interface {p0, v4, v0}, Lcom/xinzhu/overmind/server/accounts/e;->addSharedAccountAsUser(Landroid/accounts/Account;I)Z

    move-result v0

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    .line 157
    :pswitch_15
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-interface {p0, v0, v2, v1}, Lcom/xinzhu/overmind/server/accounts/e;->addSharedAccountsFromParentUser(IILjava/lang/String;)V

    .line 162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 163
    :pswitch_16
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-interface {p0, v0, v2, v1}, Lcom/xinzhu/overmind/server/accounts/e;->getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 169
    :pswitch_17
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    .line 171
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/accounts/Account;

    .line 172
    :cond_19
    invoke-interface {p0, v4}, Lcom/xinzhu/overmind/server/accounts/e;->accountAuthenticated(Landroid/accounts/Account;)Z

    move-result v0

    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    .line 175
    :pswitch_18
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v3

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 178
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    move-object v5, v0

    goto :goto_b

    :cond_1a
    move-object v5, v4

    .line 179
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 180
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v4, v0

    .line 181
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v6, 0x1

    goto :goto_c

    :cond_1c
    const/4 v6, 0x0

    .line 182
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v4

    move v4, v6

    move v5, v7

    .line 183
    invoke-interface/range {v0 .. v5}, Lcom/xinzhu/overmind/server/accounts/e;->confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 185
    :pswitch_19
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v2, 0x1

    .line 189
    :cond_1d
    invoke-interface {p0, v0, v3, v2}, Lcom/xinzhu/overmind/server/accounts/e;->editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V

    .line 190
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 191
    :pswitch_1a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v3

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 194
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    move-object v5, v0

    goto :goto_d

    :cond_1e
    move-object v5, v4

    .line 195
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v7, 0x1

    goto :goto_e

    :cond_1f
    const/4 v7, 0x0

    .line 197
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    .line 198
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v11, v0

    goto :goto_f

    :cond_20
    move-object v11, v4

    :goto_f
    move-object v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v6

    move v4, v7

    move-object v5, v11

    .line 199
    invoke-interface/range {v0 .. v5}, Lcom/xinzhu/overmind/server/accounts/e;->updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 201
    :pswitch_1b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v3

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    const/4 v11, 0x1

    goto :goto_10

    :cond_21
    const/4 v11, 0x0

    .line 207
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    .line 208
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v12, v0

    goto :goto_11

    :cond_22
    move-object v12, v4

    .line 209
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    move v5, v11

    move-object v6, v12

    move v7, v13

    .line 210
    invoke-interface/range {v0 .. v7}, Lcom/xinzhu/overmind/server/accounts/e;->addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V

    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 212
    :pswitch_1c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v3

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    const/4 v11, 0x1

    goto :goto_12

    :cond_23
    const/4 v11, 0x0

    .line 218
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24

    .line 219
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v12, v0

    goto :goto_13

    :cond_24
    move-object v12, v4

    :goto_13
    move-object v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    move v5, v11

    move-object v6, v12

    .line 220
    invoke-interface/range {v0 .. v6}, Lcom/xinzhu/overmind/server/accounts/e;->addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 222
    :pswitch_1d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v3

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25

    .line 225
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    move-object v5, v0

    goto :goto_14

    :cond_25
    move-object v5, v4

    .line 226
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26

    const/4 v7, 0x1

    goto :goto_15

    :cond_26
    const/4 v7, 0x0

    .line 228
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27

    const/4 v11, 0x1

    goto :goto_16

    :cond_27
    const/4 v11, 0x0

    .line 229
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28

    .line 230
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v12, v0

    goto :goto_17

    :cond_28
    move-object v12, v4

    .line 231
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v6

    move v4, v7

    move v5, v11

    move-object v6, v12

    move v7, v13

    .line 232
    invoke-interface/range {v0 .. v7}, Lcom/xinzhu/overmind/server/accounts/e;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;I)V

    .line 233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 234
    :pswitch_1e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29

    .line 236
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/accounts/Account;

    .line 237
    :cond_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v2, 0x1

    .line 240
    :cond_2a
    invoke-interface {p0, v4, v0, v3, v2}, Lcom/xinzhu/overmind/server/accounts/e;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 241
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 242
    :pswitch_1f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b

    .line 244
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/accounts/Account;

    .line 245
    :cond_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-interface {p0, v4, v0, v1}, Lcom/xinzhu/overmind/server/accounts/e;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 249
    :pswitch_20
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c

    .line 251
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/accounts/Account;

    .line 252
    :cond_2c
    invoke-interface {p0, v4}, Lcom/xinzhu/overmind/server/accounts/e;->clearPassword(Landroid/accounts/Account;)V

    .line 253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 254
    :pswitch_21
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2d

    .line 256
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/accounts/Account;

    .line 257
    :cond_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-interface {p0, v4, v0}, Lcom/xinzhu/overmind/server/accounts/e;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 260
    :pswitch_22
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 262
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/accounts/Account;

    .line 263
    :cond_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-interface {p0, v4, v0, v1}, Lcom/xinzhu/overmind/server/accounts/e;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 267
    :pswitch_23
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 269
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/accounts/Account;

    .line 270
    :cond_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-interface {p0, v4, v0}, Lcom/xinzhu/overmind/server/accounts/e;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    .line 274
    :pswitch_24
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-interface {p0, v0, v1}, Lcom/xinzhu/overmind/server/accounts/e;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 279
    :pswitch_25
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_30

    .line 282
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/accounts/Account;

    .line 283
    :cond_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 285
    invoke-interface {p0, v0, v4, v2, v1}, Lcom/xinzhu/overmind/server/accounts/e;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V

    .line 286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 287
    :pswitch_26
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_31

    .line 289
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/accounts/Account;

    .line 290
    :cond_31
    invoke-interface {p0, v4}, Lcom/xinzhu/overmind/server/accounts/e;->removeAccountExplicitly(Landroid/accounts/Account;)Z

    move-result v0

    .line 291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    .line 293
    :pswitch_27
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_32

    .line 296
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/accounts/Account;

    .line 297
    :cond_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_33

    const/4 v2, 0x1

    .line 298
    :cond_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 299
    invoke-interface {p0, v0, v4, v2, v1}, Lcom/xinzhu/overmind/server/accounts/e;->removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V

    .line 300
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 301
    :pswitch_28
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_34

    .line 303
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    goto :goto_18

    :cond_34
    move-object v0, v4

    .line 304
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_35

    .line 306
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/Bundle;

    .line 307
    :cond_35
    invoke-interface {p0, v0, v2, v4}, Lcom/xinzhu/overmind/server/accounts/e;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    .line 308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    .line 310
    :pswitch_29
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 315
    invoke-interface {p0, v0, v2, v3, v1}, Lcom/xinzhu/overmind/server/accounts/e;->getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 317
    :pswitch_2a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-interface {p0, v0, v2, v3, v1}, Lcom/xinzhu/overmind/server/accounts/e;->getAccountByTypeAndFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 324
    :pswitch_2b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_36

    .line 327
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/accounts/Account;

    .line 328
    :cond_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-interface {p0, v0, v4, v2, v1}, Lcom/xinzhu/overmind/server/accounts/e;->hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 332
    :pswitch_2c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-interface {p0, v0, v2, v1}, Lcom/xinzhu/overmind/server/accounts/e;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 337
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {v9, v0, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v10

    .line 339
    :pswitch_2d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-interface {p0, v0, v2, v1}, Lcom/xinzhu/overmind/server/accounts/e;->getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 344
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {v9, v0, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v10

    .line 346
    :pswitch_2e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-interface {p0, v0, v2, v1}, Lcom/xinzhu/overmind/server/accounts/e;->getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {v9, v0, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v10

    .line 353
    :pswitch_2f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 355
    invoke-interface {p0, v0}, Lcom/xinzhu/overmind/server/accounts/e;->getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 356
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {v9, v0, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v10

    .line 358
    :pswitch_30
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_37

    .line 360
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/accounts/Account;

    .line 361
    :cond_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-interface {p0, v4, v0}, Lcom/xinzhu/overmind/server/accounts/e;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    .line 365
    :pswitch_31
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38

    .line 367
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/accounts/Account;

    .line 368
    :cond_38
    invoke-interface {p0, v4}, Lcom/xinzhu/overmind/server/accounts/e;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    .line 371
    :cond_39
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
