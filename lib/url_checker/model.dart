import 'dart:convert';

CheckResponseModel checkResponseModelFromJson(String str) => CheckResponseModel.fromJson(json.decode(str));

String checkResponseModelToJson(CheckResponseModel data) => json.encode(data.toJson());

class CheckResponseModel {
    final String? message;
    final bool? success;
    final bool? unsafe;
    final String? domain;
    final String? ipAddress;
    final String? countryCode;
    final String? languageCode;
    final String? server;
    final String? contentType;
    final int? statusCode;
    final int? pageSize;
    final int? domainRank;
    final bool? dnsValid;
    final bool? parking;
    final bool? spamming;
    final bool? malware;
    final bool? phishing;
    final bool? suspicious;
    final bool? adult;
    final int? riskScore;
    final DomainAge? domainAge;
    final String? category;
    final bool? redirected;
    final String? requestId;

    CheckResponseModel({
        this.message,
        this.success,
        this.unsafe,
        this.domain,
        this.ipAddress,
        this.countryCode,
        this.languageCode,
        this.server,
        this.contentType,
        this.statusCode,
        this.pageSize,
        this.domainRank,
        this.dnsValid,
        this.parking,
        this.spamming,
        this.malware,
        this.phishing,
        this.suspicious,
        this.adult,
        this.riskScore,
        this.domainAge,
        this.category,
        this.redirected,
        this.requestId,
    });

    CheckResponseModel copyWith({
        String? message,
        bool? success,
        bool? unsafe,
        String? domain,
        String? ipAddress,
        String? countryCode,
        String? languageCode,
        String? server,
        String? contentType,
        int? statusCode,
        int? pageSize,
        int? domainRank,
        bool? dnsValid,
        bool? parking,
        bool? spamming,
        bool? malware,
        bool? phishing,
        bool? suspicious,
        bool? adult,
        int? riskScore,
        DomainAge? domainAge,
        String? category,
        bool? redirected,
        String? requestId,
    }) => 
        CheckResponseModel(
            message: message ?? this.message,
            success: success ?? this.success,
            unsafe: unsafe ?? this.unsafe,
            domain: domain ?? this.domain,
            ipAddress: ipAddress ?? this.ipAddress,
            countryCode: countryCode ?? this.countryCode,
            languageCode: languageCode ?? this.languageCode,
            server: server ?? this.server,
            contentType: contentType ?? this.contentType,
            statusCode: statusCode ?? this.statusCode,
            pageSize: pageSize ?? this.pageSize,
            domainRank: domainRank ?? this.domainRank,
            dnsValid: dnsValid ?? this.dnsValid,
            parking: parking ?? this.parking,
            spamming: spamming ?? this.spamming,
            malware: malware ?? this.malware,
            phishing: phishing ?? this.phishing,
            suspicious: suspicious ?? this.suspicious,
            adult: adult ?? this.adult,
            riskScore: riskScore ?? this.riskScore,
            domainAge: domainAge ?? this.domainAge,
            category: category ?? this.category,
            redirected: redirected ?? this.redirected,
            requestId: requestId ?? this.requestId,
        );

    factory CheckResponseModel.fromJson(Map<String, dynamic> json) => CheckResponseModel(
        message: json["message"],
        success: json["success"],
        unsafe: json["unsafe"],
        domain: json["domain"],
        ipAddress: json["ip_address"],
        countryCode: json["country_code"],
        languageCode: json["language_code"],
        server: json["server"],
        contentType: json["content_type"],
        statusCode: json["status_code"],
        pageSize: json["page_size"],
        domainRank: json["domain_rank"],
        dnsValid: json["dns_valid"],
        parking: json["parking"],
        spamming: json["spamming"],
        malware: json["malware"],
        phishing: json["phishing"],
        suspicious: json["suspicious"],
        adult: json["adult"],
        riskScore: json["risk_score"],
        domainAge: json["domain_age"] == null ? null : DomainAge.fromJson(json["domain_age"]),
        category: json["category"],
        redirected: json["redirected"],
        requestId: json["request_id"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "success": success,
        "unsafe": unsafe,
        "domain": domain,
        "ip_address": ipAddress,
        "country_code": countryCode,
        "language_code": languageCode,
        "server": server,
        "content_type": contentType,
        "status_code": statusCode,
        "page_size": pageSize,
        "domain_rank": domainRank,
        "dns_valid": dnsValid,
        "parking": parking,
        "spamming": spamming,
        "malware": malware,
        "phishing": phishing,
        "suspicious": suspicious,
        "adult": adult,
        "risk_score": riskScore,
        "domain_age": domainAge?.toJson(),
        "category": category,
        "redirected": redirected,
        "request_id": requestId,
    };
}

class DomainAge {
    final String? human;
    final int? timestamp;
    final DateTime? iso;

    DomainAge({
        this.human,
        this.timestamp,
        this.iso,
    });

    DomainAge copyWith({
        String? human,
        int? timestamp,
        DateTime? iso,
    }) => 
        DomainAge(
            human: human ?? this.human,
            timestamp: timestamp ?? this.timestamp,
            iso: iso ?? this.iso,
        );

    factory DomainAge.fromJson(Map<String, dynamic> json) => DomainAge(
        human: json["human"],
        timestamp: json["timestamp"],
        iso: json["iso"] == null ? null : DateTime.parse(json["iso"]),
    );

    Map<String, dynamic> toJson() => {
        "human": human,
        "timestamp": timestamp,
        "iso": iso?.toIso8601String(),
    };
}
