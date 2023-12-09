package com.airwire.nextgenschool.security;

import org.springframework.security.core.GrantedAuthority;

import java.util.Collection;

public class JwtResponse {
	private String token;
	private String type = "Bearer";
	private String username;

	public Long getBranchId() {
		return branchId;
	}

	public void setBranchId(Long branchId) {
		this.branchId = branchId;
	}

	private Long branchId;
	private Collection<? extends GrantedAuthority> authorities;

	public JwtResponse(String accessToken, String username, Collection<? extends GrantedAuthority> authorities,Long branchId) {
		this.token = accessToken;
		this.username = username;
		this.authorities = authorities;
		this.branchId = branchId;
	}

	public String getAccessToken() {
		return token;
	}

	public void setAccessToken(String accessToken) {
		this.token = accessToken;
	}

	public String getTokenType() {
		return type;
	}

	public void setTokenType(String tokenType) {
		this.type = tokenType;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return authorities;
    }
}