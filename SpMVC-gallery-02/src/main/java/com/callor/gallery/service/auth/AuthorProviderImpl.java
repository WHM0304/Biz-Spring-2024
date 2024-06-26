package com.callor.gallery.service.auth;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.callor.gallery.dao.RoleDao;
import com.callor.gallery.dao.UserDao;
import com.callor.gallery.models.RoleVO;
import com.callor.gallery.models.UserVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("authorProviderImpl")
public class AuthorProviderImpl implements AuthenticationProvider{
	private final UserDao userDao;
	private final RoleDao roleDao;
	private final PasswordEncoder passwordEncoder;



	public AuthorProviderImpl(UserDao userDao, RoleDao roleDao, PasswordEncoder passwordEncoder) {
		super();
		this.userDao = userDao;
		this.roleDao = roleDao;
		this.passwordEncoder = passwordEncoder;
	}

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		
		String username = authentication.getName();
		String password = authentication.getCredentials().toString();
		
		log.debug("{},{}",username, password);
		if(username == null || username.isBlank()) {
			throw new UsernameNotFoundException("사용자이름을 입력하세요");
		}
		
		UserVO userVO = userDao.findById(username);
		if(userVO == null || !userVO.getUsername().equals(username)) {
			throw new UsernameNotFoundException("없는 사용자이름 입니다.");
		}
		if(password == null || password.isBlank())
				 {
			throw new BadCredentialsException("비밀번호 입력하세요");
		}
		if(!passwordEncoder.matches(password,userVO.getPassword()))
				 {
			throw new BadCredentialsException("비밀번호가 일치하지 않음");
		}
		List<GrantedAuthority> grantList = new ArrayList<>();
		List<RoleVO> roles = roleDao.findByUsername(username);
		for(RoleVO vo : roles) {
			grantList.add(new SimpleGrantedAuthority(vo.getR_role()));
		}
		
		
		
//		grantList.add(new SimpleGrantedAuthority("USER"));
//		grantList.add(new SimpleGrantedAuthority("ADMIN"));
		
		UsernamePasswordAuthenticationToken token
		= new UsernamePasswordAuthenticationToken(userVO, password,grantList);
		
		
		
		return token;
	}

	@Override
	public boolean supports(Class<?> authentication) {
		// TODO Auto-generated method stub
		return true;
	}

}
