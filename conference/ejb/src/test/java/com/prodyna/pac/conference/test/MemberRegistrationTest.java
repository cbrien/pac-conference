package com.prodyna.pac.conference.test;

import static org.junit.Assert.assertNotNull;

import javax.inject.Inject;

import org.jboss.arquillian.container.test.api.Deployment;
import org.jboss.arquillian.junit.Arquillian;
import org.jboss.shrinkwrap.api.Archive;
import org.jboss.shrinkwrap.api.ShrinkWrap;
import org.jboss.shrinkwrap.api.asset.EmptyAsset;
import org.jboss.shrinkwrap.api.spec.WebArchive;
import org.junit.Test;
import org.junit.runner.RunWith;

import com.prodyna.pac.conference.init.ResourcesProducer;
import com.prodyna.pac.conference.model.Member;
import com.prodyna.pac.conference.service.MemberRegistration;

@RunWith(Arquillian.class)
public class MemberRegistrationTest {

	public MemberRegistrationTest() {
		System.out.println("INNNNNNNNNNNNNNNNNNIT");
	}

	@Deployment
	public static Archive<?> createTestArchive()
	{

		return ShrinkWrap
				.create(WebArchive.class, "test.war")
				.addClasses(Member.class, MemberRegistration.class,
						ResourcesProducer.class)
				.addAsResource("META-INF/test-persistence.xml",
						"META-INF/persistence.xml")
				.addAsWebInfResource(EmptyAsset.INSTANCE, "beans.xml")
				// Deploy our test datasource
				.addAsWebInfResource("test-ds.xml", "test-ds.xml");
	}

	@Inject
	MemberRegistration memberRegistration;

	// @Inject
	// Logger log;

	@Test
	public void testFoo() throws Exception
	{
		System.out
				.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
	}

	@Test
	public void testRegister() throws Exception
	{
		System.out
				.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
		Member newMember = new Member();
		newMember.setName("Jane Doe");
		newMember.setEmail("jane@mailinator.com");
		newMember.setPhoneNumber("2125551234");
		memberRegistration.register(newMember);
		assertNotNull(newMember.getId());
		// log.info(newMember.getName() + " was persisted with id " +
		// newMember.getId());
	}

}
