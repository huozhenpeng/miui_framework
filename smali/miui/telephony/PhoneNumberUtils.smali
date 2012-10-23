.class public Lmiui/telephony/PhoneNumberUtils;
.super Landroid/telephony/PhoneNumberUtils;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;,
        Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;,
        Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    }
.end annotation


# static fields
.field private static final CHINA_COUNTRY_CODE:Ljava/lang/String; = "86"

.field public static final CHINA_MCC:Ljava/lang/String; = "460"

.field private static final CHINA_MOBILE_NUMBER_LENGTH:I = 0xb

.field private static final CHINA_MOBILE_NUMBER_PREFIX:Ljava/lang/String; = "1"

.field private static final CHINA_REGION_CODE1:Ljava/lang/String; = "+86"

.field private static final CHINA_REGION_CODE2:Ljava/lang/String; = "0086"

.field private static final EMERGENCY_NUMBERS:[Ljava/lang/String; = null

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field public static final MASK_PHONE_NUMBER_MODE_HEAD:I = 0x0

.field public static final MASK_PHONE_NUMBER_MODE_MIDDLE:I = 0x2

.field public static final MASK_PHONE_NUMBER_MODE_TAIL:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1046
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "110"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "112"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "119"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "120"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "122"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "911"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/telephony/PhoneNumberUtils;->EMERGENCY_NUMBERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/telephony/PhoneNumberUtils;-><init>()V

    .line 658
    return-void
.end method

.method public static cancelAsyncTelocationQuery(I)V
    .registers 2
    .parameter "token"

    .prologue
    .line 860
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->cancelOperation(I)V

    .line 861
    return-void
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "phoneNumber"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractNetworkPortion(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "phoneNumber"
    .parameter "phoneType"

    .prologue
    .line 95
    if-nez p0, :cond_4

    .line 96
    const/4 v0, 0x0

    .line 101
    :goto_3
    return-object v0

    .line 98
    :cond_4
    const/4 v0, 0x3

    if-eq p1, v0, :cond_d

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 99
    :cond_d
    const/4 v0, 0x0

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 101
    :cond_1d
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "phoneNumber"

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "phoneNumber"
    .parameter "phoneType"

    .prologue
    .line 109
    if-nez p0, :cond_4

    .line 110
    const/4 v0, 0x0

    .line 116
    :goto_3
    return-object v0

    .line 113
    :cond_4
    const/4 v0, 0x3

    if-eq p1, v0, :cond_d

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 114
    :cond_d
    const/4 v0, 0x0

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 116
    :cond_1d
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static formatNumberWithIp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "context"
    .parameter "number"

    .prologue
    .line 906
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "button_autoip"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_12

    const/4 v5, 0x1

    .line 908
    .local v5, isAutoIpEnabled:Z
    :goto_e
    if-nez v5, :cond_14

    move-object v7, p1

    .line 974
    .end local p1
    .local v7, number:Ljava/lang/String;
    :goto_11
    return-object v7

    .line 906
    .end local v5           #isAutoIpEnabled:Z
    .end local v7           #number:Ljava/lang/String;
    .restart local p1
    :cond_12
    const/4 v5, 0x0

    goto :goto_e

    .line 913
    .restart local v5       #isAutoIpEnabled:Z
    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "current_areacode"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lmiui/provider/ExtraSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 915
    .local v1, currentAreaCode:Ljava/lang/String;
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_2a

    :cond_28
    move-object v7, p1

    .line 917
    .end local p1
    .restart local v7       #number:Ljava/lang/String;
    goto :goto_11

    .line 921
    .end local v7           #number:Ljava/lang/String;
    .restart local p1
    :cond_2a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "autoip_prefix"

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lmiui/provider/ExtraSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 925
    .local v3, ipPrefix:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_40

    move-object v7, p1

    .line 926
    .end local p1
    .restart local v7       #number:Ljava/lang/String;
    goto :goto_11

    .line 928
    .end local v7           #number:Ljava/lang/String;
    .restart local p1
    :cond_40
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_48

    move-object v7, p1

    .line 930
    .end local p1
    .restart local v7       #number:Ljava/lang/String;
    goto :goto_11

    .line 933
    .end local v7           #number:Ljava/lang/String;
    .restart local p1
    :cond_48
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v8

    .line 934
    .local v8, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_c7

    .line 935
    invoke-virtual {v8, p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocationAreaCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 936
    .local v0, areaCode:Ljava/lang/String;
    const-string v9, "0"

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_cd

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 939
    .local v2, id:Ljava/lang/String;
    :goto_67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "button_add_zero_prefix"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_cf

    const/4 v4, 0x1

    .line 943
    .local v4, isAddZeroPrefixEnabled:Z
    :goto_75
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "button_auto_ip_support_local_numbers"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_d1

    const/4 v6, 0x1

    .line 947
    .local v6, isSupportLocalNumbers:Z
    :goto_83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c7

    if-nez v6, :cond_91

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c7

    .line 948
    :cond_91
    const-string v9, "+86"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ea

    .line 950
    invoke-virtual {v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_ab

    invoke-virtual {v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v9

    if-eqz v9, :cond_d3

    if-eqz v4, :cond_d3

    .line 951
    :cond_ab
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 972
    .end local v0           #areaCode:Ljava/lang/String;
    .end local v2           #id:Ljava/lang/String;
    .end local v4           #isAddZeroPrefixEnabled:Z
    .end local v6           #isSupportLocalNumbers:Z
    :cond_c7
    :goto_c7
    invoke-virtual {v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    move-object v7, p1

    .line 974
    .end local p1
    .restart local v7       #number:Ljava/lang/String;
    goto/16 :goto_11

    .end local v7           #number:Ljava/lang/String;
    .restart local v0       #areaCode:Ljava/lang/String;
    .restart local p1
    :cond_cd
    move-object v2, v1

    .line 936
    goto :goto_67

    .line 939
    .restart local v2       #id:Ljava/lang/String;
    :cond_cf
    const/4 v4, 0x0

    goto :goto_75

    .line 943
    .restart local v4       #isAddZeroPrefixEnabled:Z
    :cond_d1
    const/4 v6, 0x0

    goto :goto_83

    .line 953
    .restart local v6       #isSupportLocalNumbers:Z
    :cond_d3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_c7

    .line 955
    :cond_ea
    const-string v9, "0086"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_138

    .line 957
    invoke-virtual {v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_104

    invoke-virtual {v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v9

    if-eqz v9, :cond_121

    if-eqz v4, :cond_121

    .line 958
    :cond_104
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_c7

    .line 960
    :cond_121
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_c7

    .line 963
    :cond_138
    invoke-virtual {v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v9

    if-eqz v9, :cond_159

    if-eqz v4, :cond_159

    .line 964
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_c7

    .line 967
    :cond_159
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "+"

    const-string v11, "00"

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_c7
.end method

.method public static formatNumberWithoutIp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 989
    if-nez p1, :cond_5

    move-object v2, p1

    .line 1012
    .end local p1
    .local v2, number:Ljava/lang/String;
    :goto_4
    return-object v2

    .line 992
    .end local v2           #number:Ljava/lang/String;
    .restart local p1
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "button_autoip"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_12

    const/4 v1, 0x1

    .line 995
    .local v1, isAutoIpEnabled:Z
    :cond_12
    if-nez v1, :cond_16

    move-object v2, p1

    .line 997
    .end local p1
    .restart local v2       #number:Ljava/lang/String;
    goto :goto_4

    .line 1000
    .end local v2           #number:Ljava/lang/String;
    .restart local p1
    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "autoip_prefix"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1003
    .local v0, ipPrefix:Ljava/lang/String;
    if-nez v0, :cond_26

    .line 1004
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1006
    :cond_26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    move-object v2, p1

    .line 1007
    .end local p1
    .restart local v2       #number:Ljava/lang/String;
    goto :goto_4

    .line 1009
    .end local v2           #number:Ljava/lang/String;
    .restart local p1
    :cond_2e
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1010
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_3c
    move-object v2, p1

    .line 1012
    .end local p1
    .restart local v2       #number:Ljava/lang/String;
    goto :goto_4
.end method

.method public static getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 878
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 880
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, simOperator:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/gsm/MiuiSpnOverride;->getInstance()Lcom/android/internal/telephony/gsm/MiuiSpnOverride;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gsm/MiuiSpnOverride;->getEquivalentOperatorNumeric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 882
    const-string v2, "46000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 883
    const-string v2, "17951"

    .line 889
    :goto_1f
    return-object v2

    .line 884
    :cond_20
    const-string v2, "46001"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 885
    const-string v2, "17911"

    goto :goto_1f

    .line 886
    :cond_2b
    const-string v2, "46003"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 887
    const-string v2, "17901"

    goto :goto_1f

    .line 889
    :cond_36
    const-string v2, ""

    goto :goto_1f
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .registers 6
    .parameter "a"

    .prologue
    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 78
    .local v0, origLength:I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 79
    .local v1, pIndex:I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 81
    .local v3, wIndex:I
    invoke-static {v1, v3}, Lmiui/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v2

    .line 83
    .local v2, trimIndex:I
    if-gez v2, :cond_19

    .line 84
    add-int/lit8 v4, v0, -0x1

    .line 86
    :goto_18
    return v4

    :cond_19
    add-int/lit8 v4, v2, -0x1

    goto :goto_18
.end method

.method private static isAlnum(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 1143
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_10

    const/16 v0, 0x7a

    if-le p0, v0, :cond_18

    :cond_10
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static isChinaMobileNumber(Ljava/lang/String;)Z
    .registers 6
    .parameter "phoneNumber"

    .prologue
    const/16 v4, 0xb

    const/4 v1, 0x0

    .line 133
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_10

    .line 147
    :cond_f
    :goto_f
    return v1

    .line 137
    :cond_10
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, number:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "86"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    if-lt v2, v3, :cond_3a

    .line 140
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xb

    const-string v2, "86"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "861"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_f

    .line 142
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_f

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xb

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_f
.end method

.method public static isChineseOperator(Ljava/lang/String;)Z
    .registers 2
    .parameter "operator"

    .prologue
    .line 174
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "460"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isDialable(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    .line 120
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 121
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lmiui/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 122
    const/4 v2, 0x0

    .line 125
    :goto_12
    return v2

    .line 120
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 125
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method

.method public static isMiuiEmergencyNumber(Ljava/lang/String;Z)Z
    .registers 9
    .parameter "number"
    .parameter "useExactMatch"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1051
    if-nez p0, :cond_5

    .line 1066
    :cond_4
    :goto_4
    return v4

    .line 1054
    :cond_5
    sget-object v0, Lmiui/telephony/PhoneNumberUtils;->EMERGENCY_NUMBERS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_9
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 1055
    .local v1, emergencyNum:Ljava/lang/String;
    if-eqz p1, :cond_17

    .line 1056
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    move v4, v5

    .line 1057
    goto :goto_4

    .line 1060
    :cond_17
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    move v4, v5

    .line 1061
    goto :goto_4

    .line 1054
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method

.method public static isServiceNumber(Ljava/lang/String;)Z
    .registers 3
    .parameter "phoneNumber"

    .prologue
    .line 169
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 170
    .local v0, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isServiceNumber()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static maskPhoneNumber(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10
    .parameter "phoneNumber"
    .parameter "cutMode"

    .prologue
    .line 1090
    if-nez p0, :cond_5

    .line 1091
    const-string v6, ""

    .line 1139
    :goto_4
    return-object v6

    .line 1093
    :cond_5
    const/4 v1, 0x0

    .line 1094
    .local v1, alnumCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_1c

    .line 1095
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lmiui/telephony/PhoneNumberUtils;->isAlnum(C)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1096
    add-int/lit8 v1, v1, 0x1

    .line 1094
    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1100
    :cond_1c
    const/4 v2, 0x0

    .line 1101
    .local v2, cutLength:I
    const/4 v6, 0x7

    if-ge v1, v6, :cond_26

    .line 1102
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 1103
    :cond_26
    const/16 v6, 0xb

    if-ge v1, v6, :cond_36

    .line 1104
    const/4 v2, 0x2

    .line 1109
    :goto_2b
    packed-switch p1, :pswitch_data_7e

    .line 1120
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid cut mode"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1106
    :cond_36
    const/4 v2, 0x3

    goto :goto_2b

    .line 1111
    :pswitch_38
    const/4 v3, 0x0

    .line 1123
    .local v3, cutStart:I
    :goto_39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1124
    .local v5, result:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1125
    .local v0, addedAlnumCount:I
    const/4 v4, 0x0

    :goto_40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_78

    .line 1126
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lmiui/telephony/PhoneNumberUtils;->isAlnum(C)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 1127
    if-lt v0, v3, :cond_54

    if-gtz v2, :cond_68

    .line 1128
    :cond_54
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1133
    :goto_5b
    add-int/lit8 v0, v0, 0x1

    .line 1125
    :goto_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 1114
    .end local v0           #addedAlnumCount:I
    .end local v3           #cutStart:I
    .end local v5           #result:Ljava/lang/StringBuilder;
    :pswitch_60
    sub-int v3, v1, v2

    .line 1115
    .restart local v3       #cutStart:I
    goto :goto_39

    .line 1117
    .end local v3           #cutStart:I
    :pswitch_63
    sub-int v6, v1, v2

    div-int/lit8 v3, v6, 0x2

    .line 1118
    .restart local v3       #cutStart:I
    goto :goto_39

    .line 1130
    .restart local v0       #addedAlnumCount:I
    .restart local v5       #result:Ljava/lang/StringBuilder;
    :cond_68
    const/16 v6, 0x3f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1131
    add-int/lit8 v2, v2, -0x1

    goto :goto_5b

    .line 1135
    :cond_70
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5d

    .line 1139
    :cond_78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 1109
    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_38
        :pswitch_60
        :pswitch_63
    .end packed-switch
.end method

.method private static minPositive(II)I
    .registers 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 54
    if-ltz p0, :cond_9

    if-ltz p1, :cond_9

    .line 55
    if-ge p0, p1, :cond_7

    .line 61
    .end local p0
    :cond_6
    :goto_6
    return p0

    .restart local p0
    :cond_7
    move p0, p1

    .line 55
    goto :goto_6

    .line 56
    :cond_9
    if-gez p0, :cond_6

    .line 58
    if-ltz p1, :cond_f

    move p0, p1

    .line 59
    goto :goto_6

    .line 61
    :cond_f
    const/4 p0, -0x1

    goto :goto_6
.end method

.method public static parseNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "number"

    .prologue
    .line 1070
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_15

    .line 1071
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 1072
    .local v0, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v0, :cond_15

    .line 1073
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object p0

    .line 1076
    .end local v0           #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_15
    return-object p0
.end method

.method public static parseTelocationString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    .line 872
    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->queryTelocation(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryTelocationStringAsync(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V
    .registers 17
    .parameter "token"
    .parameter "cookie1"
    .parameter "cookie2"
    .parameter "cookie3"
    .parameter "cookie4"
    .parameter "listener"
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    .line 815
    invoke-virtual {p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_telocation"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 818
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->startQueryTelocationString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V

    .line 824
    :goto_1e
    return-void

    .line 822
    :cond_1f
    const/4 v5, 0x0

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public static queryTelocationStringAsync(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 18
    .parameter "token"
    .parameter "cookie1"
    .parameter "cookie2"
    .parameter "cookie3"
    .parameter "cookie4"
    .parameter "listener"
    .parameter "context"
    .parameter "phoneNumber"
    .parameter "enableTelocation"

    .prologue
    .line 844
    if-eqz p8, :cond_13

    .line 845
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->startQueryTelocationString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V

    .line 851
    :goto_12
    return-void

    .line 849
    :cond_13
    const/4 v5, 0x0

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_12
.end method

.method public static removeDashesAndBlanks(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "phoneNumber"

    .prologue
    .line 1021
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1032
    .end local p0
    :goto_6
    return-object p0

    .line 1025
    .restart local p0
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1026
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_25

    .line 1027
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1028
    .local v0, c:C
    const/16 v3, 0x20

    if-eq v0, v3, :cond_22

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_22

    .line 1029
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1026
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1032
    .end local v0           #c:C
    :cond_25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static splitNetworkAndPostDialPortion(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .parameter "phoneNumber"

    .prologue
    const/4 v3, 0x0

    .line 151
    if-nez p0, :cond_5

    .line 152
    const/4 v1, 0x0

    .line 159
    :goto_4
    return-object v1

    .line 155
    :cond_5
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 156
    .local v0, networkEnd:I
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 157
    .local v1, ret:[Ljava/lang/String;
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 158
    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_20

    const-string v2, ""

    :goto_1d
    aput-object v2, v1, v3

    goto :goto_4

    :cond_20
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1d
.end method

.method public static stripSeparatorsAndCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "phoneNumber"

    .prologue
    .line 36
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, number:Ljava/lang/String;
    if-eqz v0, :cond_18

    .line 39
    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 40
    const-string v1, "+86"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    :cond_18
    :goto_18
    return-object v0

    .line 41
    :cond_19
    const-string v1, "0086"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 42
    const-string v1, "0086"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method
